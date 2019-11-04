class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :amount
      t.string :reference
      t.string :description
      t.string :url
      t.string :payment_url

      t.timestamps
    end
  end
end
