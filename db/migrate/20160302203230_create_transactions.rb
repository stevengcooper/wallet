class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :payee
      t.float :amount
      t.datetime :date
      t.string :account_type

      t.timestamps null: false
    end
  end
end
