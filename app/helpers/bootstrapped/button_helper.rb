module Bootstrapped
  module ButtonHelper
    def button(label, icon, options = {})
      id, klass, style, options = default_options(options)

      options.merge!(class: "btn btn-default button #{klass}")
      content_tag(:button, options) do
        "#{icon} #{label}".html_safe
      end   
    end

    def save_button(label = 'Save', options = {})
      options[:class] ||= ""
      options[:class] += " save_button"

      button(label, save_icon, options)
    end

    def search_button(label = 'Search', options = {})
      options[:class] ||= ""
      options[:class] += " search_button"

      button(label, search_icon, options)
    end

    def cancel_link(label = "Cancel", url = url_for(action: :index), options = {})
      options[:class] ||= ""
      options[:class] += " cancel_link"
      id, klass, style, options = default_options(options)

      options.merge!(class: klass, style: style, id: id)
      link_to label, url, options
    end

    def button_link(label, url, options = {})
      id, klass, style, options = default_options(options)

      options.merge!(class: "btn btn-default button #{klass}", style: style, id: id)
      link_to label, url, options
    end

    def new_button_link(label, url, options = {})
      id, klass, style, options = default_options(options)

      options.merge!(class: "btn btn-success button #{klass}", style: style, id: id)
      link_to label, url, options
    end

    def delete_button_link(label, url, options = {})
      options = {confirm_message: 'Are you sure?'}.merge(options)
      id, klass, style, options = default_options(options)
      confirm_message = options.delete(:confirm_message)

      options.merge!(class: "btn btn-danger button #{klass}", style: style, id: id, method: :delete, data: {confirm: confirm_message})
      link_to label, url, options
    end
  end
end