class CreateCandidates < ActiveRecord::Migration
  def self.up
    create_table :candidates do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :state
      t.text :resume

      t.timestamps
    end
  end

  def self.down
    drop_table :candidates
  end
end
