# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def initialize(url)
        @url = url
    end

    # send GET request to URL passed in on initialization, return body of the response
    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    # Return Ruby Array/Hash of data converted to JSON
    def parse_json
        JSON.parse(self.get_response_body)
    end
end