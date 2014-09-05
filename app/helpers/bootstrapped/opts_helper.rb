module Bootstrapped
  module OptsHelper
    def default_options(options)
      id = options.delete(:id)
      klass = options.delete(:class)
      style = options.delete(:style)
      [id, klass, style, options]
    end
  end
end