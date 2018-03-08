

module Api
  include Airborne
  def remove_user(email)
    headers = {
      content_type: 'application/json'
    }
    delete "http://organinja.herokuapp.com/api/accounts/#{email}", headers
    expect(body).not_to be_nil
  end
  module_function :remove_user
end
