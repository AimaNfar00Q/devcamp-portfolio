#portfolio model

class Portfolio < ApplicationRecord  #this portfolio is been called in portfolio cotroller
	validates_presence_of :title, :body, :main_image, :thumb_image

def self.angular        #alternate way to scope
	where(subtitle:"Angular")
end

scope :ruby_on_rails_portfolio_items , ->{  where(subtitle:"Ruby on Rails")}    #CUSTOM SCOPE VID 79


end
