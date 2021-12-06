#portfolio controller 22

class PortfoliosController < ApplicationController
	def index
	@portfolio_items = Portfolio.all #calling from portfolio model
	end
end
