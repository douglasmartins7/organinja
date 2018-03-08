

class Delorean
  def back_to_the_past(email)
    mongo_uri = "mongodb://heroku_cl3sp308:gta01o3sfi6qq5i26a96ie1d5l@ds013495.mlab.com:13495/heroku_cl3sp308"
    @user_id = nil

    Mongo::Logger.logger.level = Logger::FATAL

    client = Mongo::Client.new(mongo_uri)
    users = client[:users].find('profile.email' => email)

    users.each do |u|
      @user_id = u['_id']
    end

    client[:users].delete_one('_id' => @user_id)

    client.close
  end
end
