module Bootstrapped
  module RowsAndGridsHelper  
    include OptsHelper

    DEVICES = [:xs, :sm, :md, :lg]

    def row_and_grid(_options = {})
      options = {size: {lg: 12, md: 12, sm: 12, xs: 12}}
      options, _options = update_size(options, _options)
      options.update(_options)
      id, klass, style, options = default_options(options)

      options.merge!(class: "row #{klass}", style: style, id: id)
      content_tag(:div, options) do
        size = options.delete(:size)
        classes = DEVICES.map do |device| 
          "col-#{device}-#{size[device]}"
        end 
        content_tag(:div, class: classes) do
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

    def grid(_options = {})
      options = {size: {lg: 12, md: 12, sm: 12, xs: 12}}
      update_size(options, _options)
      options.update(_options)
      id, klass, style, options = default_options(options)

      size = options.delete(:size)
      classes = DEVICES.map do |device| 
        "col-#{device}-#{size[device]}"
      end 
      classes << klass
      options.merge!(class: classes, style: style, id: id)
      content_tag(:div, options) do
        yield
      end
    end

  private

    def update_size(options, _options)
      if _options.key?(:size)
        size = _options.delete(:size)
        if size.class == Fixnum
          options[:size] = {lg: size, md: size, sm: size, xs: size}
        elsif size.class == Hash
          options[:size].update(size)
        end
      end
      [options, _options]
    end
  end
end