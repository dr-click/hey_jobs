# require 'HTTParty'

class AdService
  def initialize(api_url='http://mockbin.org/bin/fcb30500-7b98-476f-810d-463a0b8fc3df')
    @api_url = api_url
    @response = nil
  end

  def call
    api_call
  end

  def as_json
    return {} unless @response
    JSON.parse(@response)
  end

  #######
  private
  #######

    def api_call
      return @response if @response
      json_response = HTTParty.get(@api_url)
      @response = json_response.parsed_response
      self
    end
end
