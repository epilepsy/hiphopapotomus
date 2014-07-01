class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.date :service_date
      t.references :user, index: true
      t.string :code
      t.references :note, index: true

      t.timestamps
    end
  end
end
