require "jquery/bvi/rails/version"
require "jquery/bvi/rails/config"
require "jquery/bvi/rails/helper"

class Hash
  def camelize_bvi_keys!
    keys.each do |key|
      new_key = (key.to_s == 'bvi_ver' ? 'ver' : key.to_s.camelize)
      self[key.is_a?(Symbol) ? new_key.to_sym : new_key] = delete(key)
    end
    self
  end
end

module Jquery
  module Bvi
    module Rails
      class Engine < ::Rails::Engine

      end
    end
  end
end

ActiveSupport.on_load(:action_view) do
  include Jquery::Bvi::Rails::Helper
end
