class Student < ActiveRecord::Base
  self.table_name = "students"
  
  attribute :active, :boolean, default: false
  
  def to_s
    self.first_name + " " + self.last_name
  end
end