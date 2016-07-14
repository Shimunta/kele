require 'httparty'

class Kele
  include HTTParty

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


  def get_mentor_availability(mentor_id)
    response = Kele.get("#{@base_uri}/mentors/#{mentor_id}/student_availability", headers: { "authorization" => auth_token})
    JSON.parse response.body
  end
end
