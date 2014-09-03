module Bootstrapped
  module ButtonHelper
    def bb_save_button(label = 'Save')
      bb_button(label, save_icon, class: 'save_button')
    end

    def bb_cancel_link(label = "Cancel", url = url_for(action: :index))
      link_to label, url, class: 'cancel_link'
    end

    def bb_search_button(label = 'Search')
      bb_button(label, search_icon, class: 'search_button')
    end

    def bb_button(label, icon, options = {})
      klass = options.delete(:class)

      content_tag :button, class: "btn btn-default button #{klass}" do
        "#{icon} #{label}".html_safe
      end   
    end
  end
end