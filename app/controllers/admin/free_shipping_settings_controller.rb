class Admin::FreeShippingSettingsController < Admin::BaseController

  def update
    Spree::Config.set(params[:preferences])
    
    respond_to do |format|
      format.html {
        redirect_to admin_free_shipping_settings_path
      }
    end
  end

end

