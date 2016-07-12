require 'httparty'

class Kele
  include HTTParty

  def initialize(username, password)
    @username = username
    @password = password
  end

end
