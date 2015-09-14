require 'httparty'
require 'json'

module Geckboard
  class Client
    include HTTParty
    base_uri 'https://push.geckoboard.com'

    # @param [String] api_key
    # @return [Geckboard::Client]
    def initialize(api_key)
      @api_key = api_key
    end

    # @param [String] widget_key
    # @param [Hash] data
    # @return [HTTParty::Response]
    def push(widget_key, data)
      params = {
        :api_key => @api_key,
        :data => data
      }

      self.class.post('/v1/send/' + widget_key, :body => params.to_json, :headers => { 'Content-Type' => 'application/json' })
    end
  end
end

