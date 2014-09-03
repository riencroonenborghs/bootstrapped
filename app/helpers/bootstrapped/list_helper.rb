module Bootstrapped
  module ListHelper
    def bb_list(options = {})
      klass = options.delete(:class)
      content_tag :ul, class: "list-group #{klass}" do
        yield
      end
    end

    def bb_list_item(options = {})
      klass = options.delete(:class)
      content_tag :li, class: "list-group-item #{klass}" do
        yield
      end
    end

    def bb_pill_list(options = {})
      options = {stacked: false, justified: false}.merge!(options)
      klass = options.delete(:class)
      content_tag :ul, class: "nav nav-pills #{klass} #{'nav-stacked' if options[:stacked]} #{'nav-justified' if options[:justified]}" do
        yield
      end
    end

    def bb_pill_list_item(options = {})
      options = {active: false, disabled: false}.merge!(options)
      klass = options.delete(:class)
      content_tag :li, class: "#{klass} #{'active' if options[:active]} #{'disabled' if options[:disabled]}" do
        yield
      end
    end

  end
end