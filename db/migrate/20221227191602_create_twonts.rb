class CreateTwonts < ActiveRecord::Migration[7.0]
  def change
    create_table :twonts do |t|
      t.text :twont

      t.timestamps
    end
  end
end
