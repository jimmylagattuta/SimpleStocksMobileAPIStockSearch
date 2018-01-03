class Api::V1::TransactionsController < ApplicationController
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
