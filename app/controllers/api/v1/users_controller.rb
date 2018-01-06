class Api::V1::UsersController < ApplicationController
	skip_before_action :verify_authenticity_token

	def signup
		puts "*" * 100
		puts "params"
		puts params.inspect
		email = params[:email]
		user = User.new(email: email)
		puts user
		user.save
		message = {
			content: user
		}
		render json: message
		puts "*" * 100
	end

	def set_capital
		puts "*" * 100
		puts "params"
		puts params
		email = params['jsonEmail']
		uid = params['jsonUID']
		x = User.find_by(email: params['jsonEmail'])
		puts "@_@" * 10
		puts x
		x.uid = uid
		x.cash = 100000
		x.save
		if x.save
			message = {
				data: x
			}
		else
			message = {
				data: 'Error'
			}
		end
		render json: message
		puts "*" * 100
	end
end
