module Bootstrapped
  module TableHelper  
    def table(options = {})
      options = {hover: true, bordered: true, condensed: true}.merge!(options)
      id, klass, style, options = default_options(options)

      options.merge!(class: "table #{'table-bordered' if options[:bordered]} #{'table-hover' if options[:hover]} #{'table-condensed' if options[:condensed]} #{klass}", style: style, id: id)
      content_tag :table, options do
        yield
      end
    end
  end
end