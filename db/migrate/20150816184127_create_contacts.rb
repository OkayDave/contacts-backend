class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_id, null: false
      t.string :first_name, null: false
      t.string :middle_name, default: ""
      t.string :last_name, null: false
      t.string :occupation, default: ""
      t.string :employer, default: ""
      t.string :email, default: ""
      t.string :website, default: ""
      t.string :twitter, default: ""
      t.string :phone_home, default: ""
      t.string :phone_work, default: ""
      t.string :phone_mobile, default: ""

      t.timestamps null: false
    end

    add_index :contacts, :user_id
  end
end
