module Bootstrapped
  module MiscHelper
    def body_classes
      classes = [controller.controller_name]
      classes << controller.action_name
      classes << 'user' if respond_to?(:user_signed_in?) && user_signed_in?
      classes.join(' ')
    end

    def badge(label, options = {})
      id, klass, style, options = default_options(options)

      content_tag :span, class: "badge #{klass}", style: style, id: id do
        label
      end
    end
  end
end