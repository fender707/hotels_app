class RemoveColumnReviewIdFromHotels < ActiveRecord::Migration
  def change
    remove_column :hotels, :review_id
  end
end
