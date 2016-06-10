class Client < ActiveRecord::Base
  belongs_to :user
  has_many :projects
  validates_presence_of :name, :company
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_uniqueness_of :email
  
  def client_details
    "#{name} - #{company}"
  end
  
  def details
    "#{id} - #{name} - #{company} - #{email}"
  end
  
end
