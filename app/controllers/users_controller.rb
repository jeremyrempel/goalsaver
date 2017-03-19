class UsersController < Clearance::UsersController


  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:fname, :lname, :email, :username, :password)
  end
end
