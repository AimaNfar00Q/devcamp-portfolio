#portfolio controller 22

class PortfoliosController < ApplicationController
	def index
	@portfolio_items = Portfolio.all #calling from portfolio model
	end

	def new
		@portfolio_item= Portfolio.new
	end

	def create
	@portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body)) #getting the parameter of form title nd body

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Portfolio item was successfully created." } #will redirect to blog show page
        
      else
        format.html { render :new, status: :unprocessable_entity }
        
     end
   end	
 end

end
