module Bootstrapped
  module TabsHelper
    def bb_tabs(list = [], options = {})
      options = {}.merge!(options)
      klass = options.delete(:class)

      tabs = list.map do |label, url, active|
        item_klass = active ? 'active' : ''
        content_tag :li, class: "#{item_klass}" do
          content_tag :a, href: url do
            label
          end
        end
      end.join('')

      content_tag :ul, class: "nav nav-tabs #{klass}", id: options[:id] do
        tabs.html_safe
      end
    end

    def bb_tab_content(id, options = {})
      options = {}.merge!(options)
      klass = options.delete(:class)

      content_tag :div, id: id, class: "#{klass} tab-content" do
        yield
      end
    end

    def bb_tab_pane(id, options = {})
      options = {active: false}.merge!(options)
      klass = options.delete(:class)

      content_tag :div, id: id, class: "#{klass} tab-pane fade in #{'active' if options[:active]}" do
        yield
      end
    end
  end
end