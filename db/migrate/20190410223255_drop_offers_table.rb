class DropOffersTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :offers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
