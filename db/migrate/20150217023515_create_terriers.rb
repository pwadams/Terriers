class CreateTerriers < ActiveRecord::Migration
  def change
    create_table :terriers do |t|
      t.string :name
      t.string :breeds

      t.timestamps null: false
    end
  end
end
