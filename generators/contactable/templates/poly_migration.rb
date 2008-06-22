class <%= migration_name %> < ActiveRecord::Migration
  def self.up
    create_table "<%= table_name %>", :force => true do |t|
      t.column :<%= association_name %>_id,   :integer
      t.column :<%= association_name %>_type, :string
    end
  end

  def self.down
    drop_table "<%= table_name %>"
  end
end
