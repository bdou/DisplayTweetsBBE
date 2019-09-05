class WelcomeController < ApplicationController
  def index
  	begin
		  @tweets = $client.user_timeline(params[:name], count: 25)
		rescue
			@tweets;
			@error = "User not found"
		end
  end
end
