class Api::V1::TransactionsController < ApplicationController
	skip_before_action :verify_authenticity_token

	def buy_stocks
		puts "*" * 100
		puts "params recieved"
		puts params.inspect
		pps = params['jsonPPS']
		cash = params['jsonCash']
		quantity = params['jsonQuantity']
		symbol = params['jsonSymbol']
		email = params['jsonEmail']
		uid = params['jsonUID']
		id = params['jsonID']
		x = User.where(id: id)
		
		puts "user"
		puts x
		message = {
			content: x
		}
		render json: message
		puts "*" * 100
	end
end
