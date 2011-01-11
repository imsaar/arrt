class CreateRequisitions < ActiveRecord::Migration
  def self.up
    create_table :requisitions do |t|
      t.string :job_title
      t.text :requirements
      t.string :location
      t.integer :manager_id

      t.timestamps
    end
  end

  def self.down
    drop_table :requisitions
  end
end
