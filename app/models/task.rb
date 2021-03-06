class Task < ActiveRecord::Base
  belongs_to :project
  #validate :check_date
  
  def details
    "#{name} - #{due_date.strftime("%A, %d %B %Y")}"
  end
  
  private
  def check_date
    if !self.due_date.nil? && self.due_date < Project.find(self.project_id).start_date
      errors.add(:due_date, "Invalid Date, should be greater than project start date")
    end
  end
  
  
  
end
