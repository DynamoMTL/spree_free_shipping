require 'spree_core'
require 'spree_free_shipping_hooks'

module SpreeFreeShipping
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      
      
      AppConfiguration.class_eval do
        preference :free_shipping_amount, :integer,  :default => 1000
      end
      
      Order.class_eval do
        def eligible_for_free_shipping?
          self.item_total.to_i > ::Spree::Config[:free_shipping_amount]
        end
      end
      
      Calculator::FreeShipping.register
      
    end

    config.to_prepare &method(:activate).to_proc
  end
end
