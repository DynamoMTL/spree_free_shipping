class SpreeFreeShippingHooks < Spree::ThemeSupport::HookListener

  insert_after :admin_configurations_menu do
    '<tr>
      <td><%= link_to t("free_shipping_settings"), admin_free_shipping_settings_path %></td>
      <td><%= t("free_shipping_settings_description") %></td>
    </tr>'
  end
  
end

