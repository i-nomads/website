class AddContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :ip_address
      t.text :message

      t.timestamps
    end
  end

  def down
    drop_table :contacts
  end
end
