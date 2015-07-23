class Hotel < ActiveRecord::Base
 
  has_many :reviews  

  mount_uploader :photo, ImageUploader
  validates :name, presence: true, length: {maximum: 50}
  validates :rating, presence: true, length: {maximum: 5}

  def self.latest
    Hotel.order(:updated_at).last
  end

end
