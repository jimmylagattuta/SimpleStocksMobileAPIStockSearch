class Api::V1::SearchesController < ApplicationController
	skip_before_action :verify_authenticity_token

	def search
		# stocks = StockQuote::Stock.quote("aapl,tsla")

		puts "*" * 100
		if params
			puts "params recieved"
			puts "params"
			puts params.inspect
			sym = params['symbol']
			stock_search = StockQuote::Stock.quote(sym)
			puts "stock_search"
			puts stock_search.inspect
			puts "stock search.l(closing price per share)"
			puts stock_search.l
			puts "stock_search.c(loss_or_gain)"
			puts stock_search.c
			puts "stock_search.op(opening price per share)"
			puts stock_search.op
			puts "stock_search.hi(days high)"
			puts stock_search.hi
			puts "stock_search.lo(days low)"
			puts stock_search.lo

			price_per_share = stock_search.l
			price_per_share = price_per_share.gsub(/[^\d\.]/, '').to_f
			loss_or_gain = stock_search.c
			high = stock_search.hi
			high = high.gsub(/[^\d\.]/, '').to_f
			low = stock_search.lo
			low = low.gsub(/[^\d\.]/, '').to_f
			open = stock_search.op
			open = open.gsub(/[^\d\.]/, '').to_f
			symbol = stock_search.symbol
			name = stock_search.name
			puts "name"
			puts name
			puts "symbol"
			puts symbol
			puts "stock_search"
			puts stock_search.inspect
			puts "stock search.l(closing price per share)"
			puts stock_search.l
			puts "stock_search.c(loss_or_gain)"
			puts stock_search.c
			puts "stock_search.op(opening price per share)"
			puts stock_search.op
			puts "stock_search.hi(days high)"
			puts stock_search.hi
			puts "stock_search.lo(days low)"
			puts stock_search.lo

			message = {
				symbol: symbol,
				name: name,
				price_per_share: price_per_share,
				loss_or_gain: loss_or_gain,
				high: high,
				low: low,
				open: open
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