module Bootstrapped
  module PanelHelper  
    def bb_panel(options = {})
      klass = options.delete(:class)
      content_tag :div, class: "panel panel-default #{klass}" do
        yield
      end
    end

    def bb_panel_heading(options = {})
      klass = options.delete(:class)
      content_tag :div, class: "panel-heading #{klass}" do
        content_tag :div, class: "panel-title" do
          yield
        end
      end
    end

    def bb_panel_body(options = {})
      klass = options.delete(:class)
      content_tag :div, class: "panel-body #{klass}" do
        yield
      end
    end
  end
end