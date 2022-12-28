class AddLikesToTwonts < ActiveRecord::Migration[7.0]
  def change
    add_column :twonts, :likes, :integer
  end
end
