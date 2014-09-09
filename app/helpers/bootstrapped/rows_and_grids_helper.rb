module Bootstrapped
  module RowsAndGridsHelper  
    include OptsHelper

    def row_and_grid(options = {})
      options = {device: :md, size: 12}.merge!(options)
      id, klass, style, options = default_options(options)

      options.merge!(class: "row #{klass}", style: style, id: id)
      content_tag(:div, options) do
        content_tag(:div, class: "col-#{options[:device]}-#{options[:size]}") do
          yield
        end
      end
    end

    def row(options = {})
      id, klass, style, options = default_options(options)

      options.merge!(class: "row #{klass}", style: style, id: id)
      content_tag(:div, options) do
        yield
      end
    end

    def grid(options = {})
      options = {device: :md, size: 12}.merge!(options)
      id, klass, style, options = default_options(options)

      options.merge!(class: "#{klass} col-#{options[:device]}-#{options[:size]}", style: style, id: id)
      content_tag(:div, options) do
        yield
      end
    end
  end
end