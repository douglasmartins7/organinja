require_relative 'sections'

class DashPage < SitePrism::Page
    section :top_menu, Sections::TopMenu, '.navbar-static-top'
end