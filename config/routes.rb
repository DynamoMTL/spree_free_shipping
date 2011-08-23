Rails.application.routes.draw do
  
  namespace :admin do
    resource  :free_shipping_settings
  end
  
end
