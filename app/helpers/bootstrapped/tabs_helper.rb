module Bootstrapped
  module TabsHelper
    def tabs(list = [], options = {})
      options = {}.merge!(options)
      id, klass, style, options = default_options(options)

      tabs = list.map do |label, url, active|
        item_klass = active ? 'active' : ''
        content_tag :li, class: "#{item_klass}" do
          content_tag :a, href: url do
            label
          end
        end
      end.join('')

      options.merge!(class: "nav nav-tabs #{klass}", style: style, id: id)
      content_tag :ul, options do
        tabs.html_safe
      end
    end

    def tab_content(id, options = {})
      options = {}.merge!(options)
      id, klass, style, options = default_options(options)

      options.merge!(class: "#{klass} tab-content", style: style, id: id)
      content_tag :div, options do
        yield
      end
    end

    def tab_pane(id, options = {})
      options = {active: false}.merge!(options)
      id, klass, style, options = default_options(options)

      options.merge!( class: "#{klass} tab-pane fade in #{'active' if options[:active]}", style: style, id: id)
      content_tag :div, options do
        yield
      end
    end
  end
end