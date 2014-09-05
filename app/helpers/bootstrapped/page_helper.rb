module Bootstrapped
  module PageHelper
    def page_header(options = {})
      id, klass, style, options = default_options(options)
      content_tag :div, class: "page-header #{klass}", style: style, id: id do
        yield        
      end
    end  
  end
end


