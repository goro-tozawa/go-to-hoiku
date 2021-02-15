class ApplicationController < ActionController::Base
  # before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :database_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:name, :name_kana, :birthday, :nickname, :postal_code, :qualification, :gender,
                                             :self_introduction, :facility_name])
  end

  def database_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:facility_name, :facility_name_kana, :business_form, :facility_address, :facility_phone_number, :representative,
                                             :representative_phone_number, :times, :self_introduction])
  end

  # def basic_auth
  #   authenticate_or_request_with_http_basic do |username, password|
  #     username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
  #   end
  # end
end
