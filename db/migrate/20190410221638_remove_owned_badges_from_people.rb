class RemoveOwnedBadgesFromPeople < ActiveRecord::Migration[5.2]
  def change
    remove_column :people, :ownedBadges, :integer
  end
end
