module Bootstrapped
  module MiscHelper
    def bb_body_classes
      classes = [controller.controller_name]
      classes << controller.action_name
      classes << 'user' if respond_to?(:user_signed_in?) && user_signed_in?
      classes.join(' ')
    end

    def bb_badge(label)
      content_tag :span, class: 'badge' do
        label
      end
    end
  end
end