#portfolio controller 22

class PortfoliosController < ApplicationController
	layout "portfolio" #pfolio layout included
	
	def index
	@portfolio_items = Portfolio.all#calling from portfolio model
	end

	def angular
	@angular_portfolio_items= Portfolio.angular
	end  

	def new
		@portfolio_item= Portfolio.new
		3.times {@portfolio_item.technologies.build}
	end

	def create
	@portfolio_item = Portfolio.new(portfolio_params) #getting the parameter of form title nd body

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Portfolio item was successfully created." } #will redirect to blog show page
        
      else
        format.html { render :new, status: :unprocessable_entity }
        
     end
   end	
 end

 def edit
 	@portfolio_item = Portfolio.find(params[:id])
 end

def update
	@portfolio_item = Portfolio.find(params[:id])
	respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Blog was successfully updated." }
      
      else
        format.html { render :edit, status: :unprocessable_entity }
        
      end
    end
end

def show
	@portfolio_item = Portfolio.find(params[:id])
	end

def destroy

	#Perform the lookup
	@portfolio_item = Portfolio.find(params[:id])

	#destroy/delete the recode
	@portfolio_item.destroy

	#Will redirect to indexpage
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Portfolio item was successfully destroyed." }
      format.json { head :no_content }
    end
end

private
def portfolio_params
 params.require(:portfolio).permit(:title,
																   :subtitle,
																   :body
																   )
end

end
