require 'httparty'

# Set the server URL
server_url = if ENV['NETWORK'] == 'docker'
              'http://server:3333/text'
            else
              'http://localhost:3333/text'
            end

# Generate a random text
random_text = ('A'..'Z').to_a.sample(10).join

# Send the text to the server
response = HTTParty.post(server_url, body: { text: random_text })

# Print the response
puts response.code
