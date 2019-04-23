class RemoveOwnedBadgesIdFromPeople < ActiveRecord::Migration[5.2]
  def change
    remove_column :people, :ownedBadges_id, :integer
  end
end
