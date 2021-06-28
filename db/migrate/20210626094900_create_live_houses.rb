class CreateLiveHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :live_houses do |t|
      t.string :name

      t.timestamps
    end
  end
end
