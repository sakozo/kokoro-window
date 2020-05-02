class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params) #←処理が実行されたらtrue、実行されなければfalseを返します。
      redirect_to root_path   #←updateができたらroot_pathにリダイレクトする。（ビューの方でSubmitになっているのでlink_toとか無理やり遷移先付けるより、コントローラーで処理してやったほうが条件分岐とかできるのでいいのかも）
    else
      render :edit  #←デフォルトでは、”app/views/コントローラー名/メソッド名.html.erb”という名前のファイルを呼び出します。　今回はupdateに失敗したら :editなのでedit.html.hamlのビューを呼び出すようにする
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
