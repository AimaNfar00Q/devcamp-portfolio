#portfolio model

class Portfolio < ApplicationRecord  #this portfolio is been called in portfolio cotroller
	validates_presence_of :title, :body, :main_image, :thumb_image

def self.angular        #alternate way to custom 
	where(subtitle:"Angular")
end

scope :ruby_on_rails_portfolio_items , ->{  where(subtitle:"Ruby on Rails")}    #CUSTOM SCOPE VID 79  create same file as created for angular scope above method in one line

 after_initialize :set_defaults
 def set_defaults   #will set defaults values
 	self.main_image ||= "https://via.placeholder.com/600x400"
 	self.thumb_image ||= "https://via.placeholder.com/350x150"
 end


end
