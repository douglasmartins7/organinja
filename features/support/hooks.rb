
Before('@adesao') do
  # via banco de dados
  # @delorean = Delorean.new
  # @delorean.back_to_the_past('papito2@qaninja.io')

  # aqui faz a exclusão do usuário direto pela API (ver arquivo api.rb)
  remove_user('papito2@qaninja.io')
end

Before('@duplicado') do
  # via banco de dados
  # @delorean = Delorean.new
  # @delorean.back_to_the_past()

  # aqui faz a exclusão do usuário direto pela API (ver arquivo api.rb)
  remove_user('david@cpfield.com')
end

# Before('@adesao') do
#     visit '/delorean'
#     find('input[name=email]').set 'papito2@qaninja.io'
#     find('input[name=password]').set 'secret'
#     find('#drop').click
#     click_button 'Back to the Past'
#     find('.toast-message')
# end

# Before('@duplicado') do
#     visit '/delorean'
#     find('input[name=email]').set 'david@cpfield.com'
#     find('input[name=password]').set 'secret'
#     find('#drop').click
#     click_button 'Back to the Past'
#     find('.toast-message')
# end

# After do
#     puts 'tudo aqui acontece depois do cenário'
# end
