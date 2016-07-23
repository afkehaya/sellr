class RegistrationsController < Devise::RegistrationsController

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to listings_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params[:user].permit(:first_name, :last_name, :website)
  end
end
