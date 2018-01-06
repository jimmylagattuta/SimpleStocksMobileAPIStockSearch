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
		calc = pps * quantity
		new_cash = cash - calc
		puts "calc 1"
		puts calc
		calc = calc.round(2)
		puts "calc 2"
		puts calc
		puts "user"
		puts x.inspect
		x.cash = new_cash
		stock_cap = calc
		x.stock_capital = stock_cap
		x.save
		if x.save
			message = {
				content: x
			}
		else
			message = {
				content: 'Error'	
			}
		end
		render json: message
		puts "*" * 100
	end
end
