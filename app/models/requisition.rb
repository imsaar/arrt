class Requisition < ActiveRecord::Base
  belongs_to :manager, :class_name => "Employee", :foreign_key => "manager_id"
end
