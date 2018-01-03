class Api::V1::TransactionsController < ApplicationController
	skip_before_action :verify_authenticity_token

	
	def buy_stocks
		puts "*" * 100
		puts "params recieved"
		puts params.inspect
		message = {
			content: 'Params Recieved'
		}
		render json: massage
		puts "*" * 100
	end
end
