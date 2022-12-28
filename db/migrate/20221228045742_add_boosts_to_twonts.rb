class AddBoostsToTwonts < ActiveRecord::Migration[7.0]
  def change
    add_column :twonts, :boosts, :integer
  end
end
