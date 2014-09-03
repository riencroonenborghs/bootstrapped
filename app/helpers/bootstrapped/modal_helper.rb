module Bootstrapped
  module ModalHelper
    def bb_modal(id, title)    
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

    def bb_modal_cancel_link(label = 'Cancel')
      link_to label, '#', class: "cancel_link",  'data-dismiss' => "modal", 'aria-hidden' => "true" 
    end

    def bb_modal_link(label, url, modal_id, options = {})      
      klass = options.delete(:class)      

      link_to label, url, 'data-toggle' => 'modal', 'data-target' => "##{modal_id}"      
    end
  end
end