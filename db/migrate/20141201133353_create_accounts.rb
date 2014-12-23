class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
    	t.string "user_id"
    	t.string "first_name",:null=>false
    	t.string "last_name"
    	t.string "country"
    	t.string "city"
    	t.string "state"
    	t.string "address"
      t.timestamps
    end
  end
end
