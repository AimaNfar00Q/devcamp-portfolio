#portfolio model

class Portfolio < ApplicationRecord  #this portfolio is been called in portfolio cotroller
	validates_presence_of :title, :body, :main_image, :thumb_image
end
