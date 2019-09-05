require 'twitter'

class WelcomeController < ApplicationController

	$client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = "LX92DpJ2UmYXRlA3GsPtrPEWp"
	  config.consumer_secret     = "lRrpDXI6MBKs3STywjxhaC2c2ULYGGSrUNdmTDBpD9T79IGJj1"
	  config.access_token        = "1169710228843220992-Fpn2wt1GE7SEjhqGcFqVx2VhhdItxc"
	  config.access_token_secret = "Uh3oJ8ZHdDxmFQsIB36taKo7ZqaCPNanzho9VCy0V1PnA"
	end

  def index
	  @tweets = $client.user_timeline(params[:name], count: 25)
  end

end
