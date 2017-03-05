class UsersController < Clearance::UsersController

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password)
  end
  
end
