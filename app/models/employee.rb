class Employee < ActiveRecord::Base
  has_many :time_off_instances
end
