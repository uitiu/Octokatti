class AddRating < ActiveRecord::Migration
  def change
    add_column :ideas, :rating, :integer
  end
end
