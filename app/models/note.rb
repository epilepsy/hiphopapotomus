class Note < ActiveRecord::Base
  belongs_to :patient
  belongs_to :user
  has_one :charge
  acts_as_votable 
end
