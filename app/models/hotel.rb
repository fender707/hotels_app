class Hotel < ActiveRecord::Base
 
  has_many :reviews  

  mount_uploader :photo, ImageUploader
  
 

end
