class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :title
      t.string :description
      t.string :logo_url
      t.string :state
      t.boolean :active

      t.timestamps
    end
  end
end
