#encoding: utf-8

Dado('que aces#enso a página de adesão') do
  @cad_page = CadastroPage.new
  @dash_page = DashPage.new
  @home_page = HomePage.new
  @cad_page.load
end

Quando('faço uma adesão com os dados:') do |table|
  @user = table.rows_hash
  
  @cad_page.faz_cadastro(@user)
end

Quando('esta adesão é duplicada') do
  @dash_page.top_menu.logout.click
  @home_page.adesao.click

  @cad_page.faz_cadastro(@user)
end

Então('meu cadastro é realizado com sucesso') do
  expect(page).to have_content @user['Email']
end

Então('sou redirecionado para o Dashboard') do
  # expect(page.title).to eql 'Dashboard'
end

Então('vejo a seguinte mensagem de alerta:') do |mensagem|
  expect(@cad_page.toaster.message.text).to eql mensagem
  sleep(5)
end

# tentativa 2

Quando('faço uma tentativa de adesão:') do |table|
  @users = table.hashes
  @messages = []

  @users.each do |u|
    @cad_page.faz_cadastro(u)
    sleep(2)
    @messages.push('Mensagem' => @cad_page.toaster.message.text)
  end
end

Então('vejo uma mensagem de alerta com a lista:') do |table|
  expect(@messages).to eql table.hashes
end
