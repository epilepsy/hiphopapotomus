class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :given_name
      t.string :family_name
      t.date :dob
      t.string :sex

      t.timestamps
    end
  end
end
