module Bootstrapped
  module PageHelper
    def page_header(options = {})
      id, klass, style, options = default_options(options)

      options.merge!(class: "page-header #{klass}", style: style, id: id)
      content_tag :div, options do
        yield        
      end
    end  
  end
end


