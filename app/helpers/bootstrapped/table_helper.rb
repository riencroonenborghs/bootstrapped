module Bootstrapped
  module TableHelper  
    def bb_table(options = {})
      klass = options.delete(:class)
      options = {hover: true, bordered: true, condensed: true}.merge!(options)
      content_tag :table, class: "table #{'table-bordered' if options[:bordered]} #{'table-hover' if options[:hover]} #{'table-condensed' if options[:condensed]} #{klass}" do
        yield
      end
    end
  end
end