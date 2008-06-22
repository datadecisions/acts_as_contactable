class PhoneNumber < ActiveRecord::Base
  belongs_to :phonable, :polymorphic => true
end
