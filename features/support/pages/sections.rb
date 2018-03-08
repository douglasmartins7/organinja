
module Sections
  class TopMenu < SitePrism::Section
    element :logout, '#logoutLink'
  end

  class SideMenu < SitePrism::Section
  end

  class Toaster < SitePrism::Section
    element :message, '.toast-message'
  end
end
