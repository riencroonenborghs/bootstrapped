module Bootstrapped
  module ButtonHelper
    def button(label, icon, options = {})
      id, klass, style, options = default_options(options)

      content_tag(:button, class: "btn btn-default button #{klass}") do
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

      button(label, save_icon, options)
    end

    def cancel_link(label = "Cancel", url = url_for(action: :index), options = {})
      options[:class] ||= ""
      options[:class] += " cancel_link"
      id, klass, style, options = default_options(options)

      link_to label, url, class: klass, style: style, id: id
    end

    def button_link(label, url, options = {})
      id, klass, style, options = default_options(options)

      link_to label, url, class: "btn btn-default button #{klass}", style: style, id: id
    end

    def new_button_link(label, url, options = {})
      id, klass, style, options = default_options(options)

      link_to label, url, class: "btn btn-success button #{klass}", style: style, id: id
    end

    def delete_button_link(label, url, options = {})
      id, klass, style, options = default_options(options)

      link_to label, url, class: "btn btn-danger button #{klass}", style: style, id: id, method: :delete, data: {confirm: "Are you sure?"}
    end
  end
end