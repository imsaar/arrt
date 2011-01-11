class Requisition < ActiveRecord::Base
  has_one :manager, :class_name => "Employee", foriegn_key => "id"
end
