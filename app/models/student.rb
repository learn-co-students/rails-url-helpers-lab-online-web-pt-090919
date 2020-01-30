class Student < ActiveRecord::Base
  self.table_name = "students"
  # attr_accessor :active
  attribute :active, :boolean, default: false
  
  def to_s
    self.first_name + " " + self.last_name
  end
end