module Bootstrapped
  module RowsAndGridsHelper  
    def bb_row_and_grid(options = {})
      klass = options.delete(:class)
      options = {device_size: 'md', grid_size: 12, class: "row #{klass}"}.merge!(options)
      content_tag(:div, class: options[:class], style: options[:style], id: options[:id]) do
        content_tag(:div, class: "col-#{options[:device_size]}-#{options[:grid_size]}") do
          yield
        end
      end
    end

    def bb_row(options = {})
      klass = options.delete(:class)
      options = {class: "row #{klass}"}.merge!(options)
      content_tag(:div, class: options[:class], style: options[:style], id: options[:id]) do
        yield
      end
    end

    def bb_grid(options = {})
      options = {device_size: 'md', grid_size: 12}.merge!(options)
      content_tag(:div, class: "#{options[:class]} col-#{options[:device_size]}-#{options[:grid_size]}", style: options[:style], id: options[:id]) do
        yield
      end
    end
  end
end