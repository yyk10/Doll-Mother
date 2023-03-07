class ApplicationController < ActionController::Base
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
   protected
    def after_sign_in_path_for(resource)
     if user_signed_in?
        root_path#login後遷移path要変更確認用なので
     else
       admin_root_path #login後遷移path確認用なので要変更
     end
    end

  protected

  def configure_permitted_parameters
    
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :telephone_number, :address])
  end

end
