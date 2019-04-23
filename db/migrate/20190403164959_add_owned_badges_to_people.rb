class AddOwnedBadgesToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :ownedBadges, :string
    add_reference :people, :ownedBadges, foreign_key: true
  end
end
