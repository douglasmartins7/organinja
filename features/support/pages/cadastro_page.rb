
require_relative 'sections'

class CadastroPage < SitePrism::Page
  set_url '/cadastro'

  section :toaster, Sections::Toaster, '.toast'

  element :name, '#registerName'
  element :email, '#registerEmail'
  element :senha, 'input[name=registerPassword]'
  element :cadastrar, 'button[id*=signup]'

  # self => chama objeto(ou elemento) da propria página

  def faz_cadastro(u)
    self.name.set u['Nome']
    self.email.set u['Email']
    self.senha.set u['Senha']
    self.cadastrar.click
  end
end
