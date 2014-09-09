module Bootstrapped
  module PanelHelper  
    def panel(options = {})
      id, klass, style, options = default_options(options)

      options.merge!(class: "panel panel-default #{klass}", style: style, id: id )
      content_tag :div, options do
        yield
      end
    end

    def panel_heading(options = {})
      id, klass, style, options = default_options(options)

      options.merge!(class: "panel-heading #{klass}", style: style, id: id)
      content_tag :div, options do
        content_tag :div, class: "panel-title" do
          yield
        end
      end
    end

    def panel_body(options = {})
      id, klass, style, options = default_options(options)

      options.merge!(class: "panel-body #{klass}", style: style, id: id)
      content_tag :div, options do
        yield
      end
    end
  end
end