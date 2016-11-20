class CreateAgendas < ActiveRecord::Migration[5.0]
  def change
    create_table :agendas do |t|
      t.integer :eatery_id
      t.integer :attraction_id
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
