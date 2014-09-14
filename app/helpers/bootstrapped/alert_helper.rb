module Bootstrapped
  module AlertHelper

    def alert_box(type, message, options = {})
      id, klass, style, options = default_options(options)
      options = {dismissable: false}.merge!(options)
      dismissable = options.delete(:dismissable)

      klass = "#{klass} alert alert-#{type} #{'alert-dismissable' if dismissable}"

      content_tag :div, {class: klass}.merge(options) do
        button = content_tag(:button, class: 'close', type: :button, data: {dismiss: :alert}, 'aria-hidden' => true) do
          '&times'.html_safe
        end
        concat button
        concat message
      end
    end

    def alert(message, options = {})
      alert_box('danger', message, options)
    end

    def notice(message, options = {})
      alert_box('success', message, options)
    end

  end
end