module Bootstrapped
  module MenuHelper
    def active_menu(look)
      return '' unless defined?(@menu)
      @menu.first == look ? "active" : ''
    end

    def active_menu_item(*look)
      return '' unless defined?(@menu)
      @menu == look ? "class=active" : ''
    end

    def menu_class(*look)
      return '' unless defined?(@menu)
      level = look.size
      anded = @menu & look
      return '' if anded.empty?
      anded.size >= level ? 'active' : ''
    end
  end
end
