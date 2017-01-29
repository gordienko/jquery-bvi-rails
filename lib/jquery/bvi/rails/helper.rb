module Jquery
  module Bvi
    module Rails
      module Helper
        def bvi_link_tag(opts = {})
          opts ||= JSON.parse(Jquery::Bvi::Rails.config.to_json)
          html = []
          html << link_to("Версия для слабовидящих", "#", class: 'bvi-panel-open')
          html << content_tag(:script, ("var bvi = %s" % opts.camelize_bvi_keys!.to_json).html_safe)
          raw html.join("\n")
        end
      end
    end
  end
end
