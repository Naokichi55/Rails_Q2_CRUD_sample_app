class UsersController < ApplicationController

  #一覧表示する際のルーティング（データベースからデータを取り出す処理）
  def index
    @users = User.all
  end

  def new 
    @user = User.new
  end

  #新規登録について
  def create
    User.create(user_params)
    #処理後一覧画面に遷移するように変更
    redirect_to action: :index
  end

  # 編集機能の処理について
  def edit
    @user = User.find(params[:id])
  end

  #編集後のデータの更新について
  def update
    user = User.find(params[:id])
    user.update(user_params)
    #処理後一覧画面に遷移するように変更
    redirect_to action: :index
  end


  # 削除時の処理について
  def destroy
    user = User.find(params[:id])
    user.destroy
    #処理後一覧画面に遷移するように変更
    redirect_to action: :index
  end

  
  # Strong Parameter：新規登録時にデータベースに登録可能な文字列についての記述
  private
  def user_params
    params.require(:user).permit(:name, :age)
  end


end
