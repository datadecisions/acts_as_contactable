require 'acts_as_contactable'

ActiveRecord::Base.send :include, DataDecisions::Acts::Contactable