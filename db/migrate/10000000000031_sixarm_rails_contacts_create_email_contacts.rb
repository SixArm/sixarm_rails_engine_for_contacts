class SixArmRailsContactsCreateEmailContacts < ActiveRecord::Migration

  TABLE = 'email_contacts'

  def self.up

    create_table TABLE, :force => true do |t|

      # Admin
      t.column :uuid, :string
      t.column :created_at, :datetime
      t.column :updated_at, :datetime
      t.column :creator_id, :integer
      t.column :updator_id, :integer
      t.column :status, :integer

      # User
      t.column :user_id,    :integer

    end

    add_index TABLE, :uuid
    add_index TABLE, :created_at
    add_index TABLE, :updated_at
    add_index TABLE, :creator_id
    add_index TABLE, :updator_id
    add_index TABLE, :status

    add_index TABLE, :user_id

  end

  def self.down
    drop_table TABLE
  end

end

