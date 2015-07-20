class Review < ActiveRecord::Base

  belongs_to :hotel
  validates_presence_of :title, :rating, :comment 

end
