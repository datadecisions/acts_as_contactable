class <%= migration_name %> < ActiveRecord::Migration
  def self.up
    create_table "<%= table_name %>", :force => true do |t|
      t.column :name,                     :string
      t.column :contact_name,             :string
      t.column :number,                   :string
      t.column :phonable_id,              :integer
      t.column :phonable_type,            :string
    end
  end

  def self.down
    drop_table "<%= table_name %>"
  end
end
