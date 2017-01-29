module Jquery
  module Bvi
    module Rails
      class << self
        attr_accessor :config

        def configure
          yield self.config ||= Config.new
        end
      end

      class Config

        attr_accessor :bvi_panel
        attr_accessor :bvi_panel_bg
        attr_accessor :bvi_panel_font_size
        attr_accessor :bvi_panel_letter_spacing
        attr_accessor :bvi_panel_line_height
        attr_accessor :bvi_panel_img
        attr_accessor :bvi_panel_img_x_y
        attr_accessor :bvi_panel_reload
        attr_accessor :bvi_panel_no_work
        attr_accessor :bvi_panel_text
        attr_accessor :bvi_panel_close_text
        attr_accessor :bvi_fix_panel
        attr_accessor :bvi_ver
        attr_accessor :bvi_close_class_and_id
        attr_accessor :bvi_text_bg
        attr_accessor :bvi_text_color
        attr_accessor :bvi_size_text
        attr_accessor :bvi_size_icon
        attr_accessor :bvi_play

        def initialize
        end
      end

    end
  end
end
