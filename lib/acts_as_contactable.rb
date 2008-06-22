module DataDecisions #:nodoc:
  module Acts #:nodoc:

    module Contactable #:nodoc:



      def self.included(base) # :nodoc:
        base.extend ClassMethods
      end


      module ClassMethods

        def acts_as_contactable
          return if self.included_modules.include?(DataDecisions::Acts::Contactable::InstanceMethods)

          include DataDecisions::Acts::Contactable::InstanceMethods

          class_eval do
            extend DataDecisions::Acts::Contactable::SingletonMethods
            
            has_many :addresses, :as => :addressable
            has_many :phone_numbers, :as => :phonable

          end

        end

      end


      module SingletonMethods


      end


      module InstanceMethods



      end


    end


  end
end
