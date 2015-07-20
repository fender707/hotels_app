class AddReviewIdToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :review_id, :integer
  end
end
