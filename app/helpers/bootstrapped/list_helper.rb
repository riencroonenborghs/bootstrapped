module Bootstrapped
  module ListHelper
    def list(options = {})
      id, klass, style, options = default_options(options)
      content_tag :ul, class: "list-group #{klass}", style: style, id: id do
        yield
      end
    end

    def list_item(options = {})
      id, klass, style, options = default_options(options)
      content_tag :li, class: "list-group-item #{klass}", style: style, id: id do
        yield
      end
    end

    def pill_list(options = {})
      options = {stacked: false, justified: false}.merge!(options)
      id, klass, style, options = default_options(options)
      content_tag :ul, class: "nav nav-pills #{klass} #{'nav-stacked' if options[:stacked]} #{'nav-justified' if options[:justified]}", style: style, id: id do
        yield
      end
    end

    def pill_list_item(options = {})
      options = {active: false, disabled: false}.merge!(options)
      id, klass, style, options = default_options(options)
      content_tag :li, class: "#{klass} #{'active' if options[:active]} #{'disabled' if options[:disabled]}", style: style, id: id do
        yield
      end
    end

  end
end