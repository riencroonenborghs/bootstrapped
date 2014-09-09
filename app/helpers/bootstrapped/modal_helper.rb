module Bootstrapped
  module ModalHelper
    def modal(id, title) 
      content_tag :div, class: "modal fade", id: id, role: 'dialog', 'aria-labelledby' => "myModalLabel", 'aria-hidden' => "true" do
        content_tag :div, class: "modal-dialog" do
          content_tag :div, class: "modal-content" do
            header = content_tag :div, class: "modal-header" do
              button = content_tag :button, type: "button", class: "close",  'data-dismiss' => "modal", 'aria-hidden' => "true" do 
                '&times;'.html_safe
              end
              h4 = content_tag :h4, class: "modal-title", id: "myModalLabel" do
                title
              end
              button + h4
            end 
            body = content_tag :div, class: "modal-body" do
              yield
            end

            header + body
          end
        end
      end
    end

    def modal_cancel_link(label = 'Cancel', options = {})
      id, klass, style, options = default_options(options)

      options.merge!(class: "cancel_link #{klass}", style: style, id: id, 'data-dismiss' => "modal", 'aria-hidden' => "true" )
      link_to label, '#', options
    end

    def modal_link(label, url, modal_id, options = {})      
      id, klass, style, options = default_options(options)

      options.merge!('data-toggle' => 'modal', 'data-target' => "##{modal_id}", class: klass, style: style, id: id)
      link_to label, url, options
    end
  end
end