class AddReviewmoreToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :reviewmore, :string
  end
end
