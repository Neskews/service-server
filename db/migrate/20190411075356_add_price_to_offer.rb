class AddPriceToOffer < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :price, :float
  end
end
