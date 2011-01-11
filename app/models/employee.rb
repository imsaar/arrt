class Employee < ActiveRecord::Base
  has_many :requisitions, :foreign_key => "manager_id"
  def name
    [first_name, middle_name, last_name].join(' ')
  end
end