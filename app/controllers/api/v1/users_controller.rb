class Api::V1::UsersController < ApplicationController
	skip_before_action :verify_authenticity_token

	
	def signup
		puts "*" * 100
		puts "params"
		puts params.inspect
		message = {
			content: 'Params recieved'
		}
		render json: message
		puts "*" * 100
	end
end
