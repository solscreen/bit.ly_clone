require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: "/long_urls",
  # query_values: { 'id' => 6 }
).to_s
p url
p RestClient.post(url, :long_url => {:url => 'www.cnn.com'})