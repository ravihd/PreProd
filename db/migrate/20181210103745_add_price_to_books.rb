class AddPriceToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :price, :intiger
      add_column :books, :created_at, :datetime
    add_column :books, :updtaed_at, :datetime
  end
end
