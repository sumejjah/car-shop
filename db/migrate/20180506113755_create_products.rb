class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.boolean :availability
      t.integer :code
      t.string :image, null: false, default: ""

      t.timestamps
    end
  end
end
