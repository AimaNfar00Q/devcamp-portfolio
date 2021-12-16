class Blog < ApplicationRecord
  enum status: {default:0 , published:1}  #either in draft mode or published
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body  #VALIDATION ON TITTLE ND BODY TIT SHOULDNT BE NIL

  
  belongs_to :topic, optional: true  #RELATIONSHIP

  def self.special_blogs
    all
  end

end
