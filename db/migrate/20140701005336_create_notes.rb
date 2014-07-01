class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :patient, index: true
      t.references :user, index: true
      t.string :primary_author
      t.string :primary_institution
      t.text :body_text
      t.text :ocr
      t.string :type
      t.string :title
      t.datetime :filing_date

      t.timestamps
    end
  end
end
