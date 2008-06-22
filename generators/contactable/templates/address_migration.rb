class <%= migration_name %> < ActiveRecord::Migration
  def self.up
    create_table "<%= table_name %>", :force => true do |t|
      t.column :name,                     :string
      t.column :addrress_1,               :string
      t.column :addrress_2,               :string
      t.column :city,                     :string
      t.column :state,                    :string
      t.column :zip,                      :string
      t.column :addressable_id,           :integer
      t.column :addressable_type,         :string
    end
  end

  def self.down
    drop_table "<%= table_name %>"
  end
end