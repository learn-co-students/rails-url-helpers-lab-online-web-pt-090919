class Student < ActiveRecord::Base
  after_initialize :default_value
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def default_value
    self.active ||= false
  end
  
  def display_active
    if self.active == false
      "This student is currently inactive."
    else self.active == true
      "This student is currently active."
    end
  end
  
end