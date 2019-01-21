class CreateNewtests < ActiveRecord::Migration[5.1]
  def change
    create_table :newtests do |t|
      t.string :name

      t.timestamps
    end
  end
end
