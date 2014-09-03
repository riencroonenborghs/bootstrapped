module Bootstrapped
  module PageHelper
    def bb_page_header(options = {})
      klass = options.delete(:class)
      content_tag :div, class: "page-header #{klass}" do
        content_tag :h3 do
          yield
        end
      end
    end  
  end
end


