class UsersController < ApplicationController
  before_action :require_login
  before_action :set_user, only: [:profile_edit, :profile_update]

  def profile_edit; end

  def profile_update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to profile_url, notice: 'Profile was successfully updated.'}
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = current_user
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:fname, :lname)
  end

end
