require 'httparty'
require_relative 'roadmap'

class Kele
  include HTTParty
  include Roadmap

  def initialize(email, password)
    @base_uri = 'https://www.bloc.io/api/v1'
    @options = { query: { email: email, password: password } }
  end

  def auth_token
    hash = Kele.post("#{@base_uri}/sessions", @options)
    if hash["auth_token"]
      hash["auth_token"]
    else
      hash
    end
  end

  def get_me
    response = Kele.get("#{@base_uri}/users/me", headers: { "authorization" => auth_token })
    JSON.parse response.body
  end

end
