class String
  def split_capitalize_and_join
    title = self.split("_")
    title.each do |s|
      s.capitalize!
    end
    title.join("")
  end
end

class ContactableGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      name = "address"
      m.migration_template 'address_migration.rb', 'db/migrate', {:assigns => {
        :migration_name => "Create#{name.split_capitalize_and_join.pluralize.gsub(/::/, '')}",
        :table_name => :addresses},
        :migration_file_name => "create_#{name.gsub(/\//, '_').pluralize}"
      }
      name = "phone_number"
      m.migration_template 'phone_migration.rb', 'db/migrate', {:assigns => {
        :migration_name => "Create#{name.split_capitalize_and_join.pluralize.gsub(/::/, '')}",
        :table_name => :phone_numbers},
        :migration_file_name => "create_#{name.gsub(/\//, '_').pluralize}"
      }
      # name = "addressable"
      # m.migration_template 'poly_migration.rb', 'db/migrate', {:assigns => {
      #   :migration_name => "Create#{name.split_capitalize_and_join.pluralize.gsub(/::/, '')}",
      #   :table_name => :addressable, :association_name => :address},
      #   :migration_file_name => "create_#{name.gsub(/\//, '_').pluralize}"
      # }
      # name = "phoneable"
      # m.migration_template 'poly_migration.rb', 'db/migrate', {:assigns => {
      #   :migration_name => "Create#{name.split_capitalize_and_join.pluralize.gsub(/::/, '')}",
      #   :table_name => :phoneable, :association_name => :phone_number },
      #   :migration_file_name => "create_#{name.gsub(/\//, '_').pluralize}"
      # }
    end
  end
end
