class CreateWaiters < ActiveRecord::Migration[5.2]
  def change
    create_table :waiters do |t|
      t.jsonb :info

      t.timestamps
    end
  end
end
