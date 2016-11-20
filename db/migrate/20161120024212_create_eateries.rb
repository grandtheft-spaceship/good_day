class CreateEateries < ActiveRecord::Migration[5.0]
  def change
    create_table :eateries do |t|
      t.string :name
      t.string :address
      t.string :cuisine

      t.timestamps(null: false)
    end
  end
end
