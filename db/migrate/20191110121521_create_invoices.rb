class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :uuid
      t.string :state, array: true, default: []
      t.jsonb :info

      t.timestamps
    end
  end
end
