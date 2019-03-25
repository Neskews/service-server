class AddScoreToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :points, :integer, :default=>0
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
