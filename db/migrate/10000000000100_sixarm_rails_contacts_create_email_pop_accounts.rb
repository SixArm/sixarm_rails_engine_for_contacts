class SixArmRailsContactsCreateEmailPopAccounts < ActiveRecord::Migration

  TABLE = 'email_pop_accounts'

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
      t.column :user_id, :integer
      t.column :username, :string
      t.column :email_address, :string
      t.column :password, :string

      # Inbound Mail Server (POP)
      t.column :inbound_mail_host, :integer
      t.column :inbound_mail_port, :integer
      t.column :inbound_mail_port_for_ssl, :integer
      t.column :inbound_mail_use_ssl, :boolean

      # Outbound Mail Server (SMTP)
      t.column :outbound_mail_host, :string
      t.column :outbound_mail_port, :integer
      t.column :outbound_mail_port_for_ssl, :integer
      t.column :outbound_mail_port_for_tls, :integer
      t.column :outbound_mail_use_authentication, :boolean
      t.column :outbound_mail_use_ssl, :boolean
      t.column :outbound_mail_use_tls, :boolean

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

