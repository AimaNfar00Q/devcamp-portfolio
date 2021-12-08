class Blog < ApplicationRecord
  enum status: {default:0 , published:1}  #either in draft mode or published
  extend FriendlyId
  friendly_id :title, use: :slugged
end
