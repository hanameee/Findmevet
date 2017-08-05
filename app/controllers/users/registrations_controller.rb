class Users::RegistrationsController < Devise::RegistrationsController
  
  
private    
  def sign_up_params     
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :address_detail, :postcode, :birth_date, :phone_number, :role)   
  end   
  
  def account_update_params     
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :address_detail, :postcode, :birth_date, :phone_number, :role)   
  end     
end