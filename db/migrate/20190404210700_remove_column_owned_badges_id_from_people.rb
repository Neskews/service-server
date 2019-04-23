class RemoveColumnOwnedBadgesIdFromPeople < ActiveRecord::Migration[5.2]
  def change
    remove_column :people, :ownedBadges
    remove_index :people, name: :index_people_on_ownedBadges_id
  end
end
