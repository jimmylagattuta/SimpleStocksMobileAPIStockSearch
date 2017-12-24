class Api::V1::SearchesController < ApplicationController
	def search
		puts "*" * 100
		if params
			puts "params recieved"
			message = {
				content: "Params Recieeved"
			}
		else
			puts "NO params"
			message = {
				content: "This wont show"
			}
		end
		render json: message
		puts "*" * 100
	end
end

# STOCK QUOTE INFO

# stock = StockQuote::Stock.quote("symbol")

# stocks = StockQuote::Stock.quote("aapl,tsla")

# stocks = StockQuote::Stock.json_quote('aapl')

# stocks = StockQuote::Stock.json_history('aapl')


# symbol, exchange, id, t, e, name, f_reuters_url, f_recent_quarter_date, f_annlyal_date, f_ttm_date, financials, kr_recent_quarter_date, kr_annual_date, kr_ttm_date, c, l, cp, ccol, op, hi, lo, vo, avvo, hi52, lo52, mc, pe, fwpe, beta, eps, dy, ldiv, shares, instown, eo, sid, sname, iid, iname, related, summary, management, moreresources, events


# History is available by providing and start date, or a start date and end date.

# stock = StockQuote::Stock.history("symbol", "start_date", "end_date")

# The stock instance will contain a symbol and history attribute, containing an array of hashes including date, open, high, low, close and volume.

# Date format is impressively flexible. 01-Jan-2016, 01-January-2016, January 01, 2016, 01/01/2016, 01-01-2016, 01-01-16 are all accepted.