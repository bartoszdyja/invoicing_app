class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :no
      t.integer :amount

      t.timestamps null: false
    end
  end
end
