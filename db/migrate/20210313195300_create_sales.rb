class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :blend
      t.string :origin
      t.integer :amount
      t.integer :price
      t.date :date

      t.timestamps
    end
  end
end
