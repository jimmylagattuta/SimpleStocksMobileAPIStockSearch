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
		jsonID = params['jsonID']
		x = User.find_by(id: jsonID)
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

	def cash
		id = params['rubyID']
		x = User.find_by(id: id)
		message = {
			content: x
		}
		render json: message
	end

	def update_stocks
		puts "*" * 100
		puts "params"
		puts params
		message = {
			content: 'Recieved'
		}
		render json: message
		puts "*" * 100
	end
end
