class AddPeopleToOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :type
    add_column :offers, :times_booked, :integer
    add_column :offers, :average_score, :float
  end
end
