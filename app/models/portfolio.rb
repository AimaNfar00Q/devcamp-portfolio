#portfolio model

class Portfolio < ApplicationRecord  #this portfolio is been called in portfolio cotroller
	has_many :technologies
	 
	 accepts_nested_attributes_for :technologies,  #Nested attributes in model meanas angular ruby for technology vid 83
	    reject_if: lambda { |attrs| attrs['name'].blank? }

	include Placeholder

	validates_presence_of :title, :body, :main_image, :thumb_image

def self.angular        #alternate way to custom 
	where(subtitle:"Angular")
end

scope :ruby_on_rails_portfolio_items , ->{  where(subtitle:"Ruby on Rails")}    #CUSTOM SCOPE VID 79  create same file as created for angular scope above method in one line

 after_initialize :set_defaults
 def set_defaults   #will set defaults values
 	self.main_image ||= Placeholder.image_generator(height:'600', width:'400')
 	self.thumb_image ||= Placeholder.image_generator(height:'350', width:'150')
 end
end