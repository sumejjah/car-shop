class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :car_name
      t.boolean :bought_here
      t.integer :user_id
      t.string :description
      t.string :status

      t.timestamps
    end
    add_index :services, :user_id
  end
end
