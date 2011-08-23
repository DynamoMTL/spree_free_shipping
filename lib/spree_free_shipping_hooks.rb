class SpreeFreeShippingHooks < Spree::ThemeSupport::HookListener

  insert_after :admin_configurations_menu do
    %(<%= tab :free_shipping_settings %>)
  end
  
end

