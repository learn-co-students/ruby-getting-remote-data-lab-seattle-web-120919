class GetRequester
    attr_accessor :url

    def initialize(url)
        @url = url
        parse_json
    end

    def get_response_body
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        data = JSON.parse(self.get_response_body)
        data.collect do |datum|
            datum 
        end
    end
end