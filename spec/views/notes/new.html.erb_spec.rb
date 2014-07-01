require 'rails_helper'

RSpec.describe "notes/new", :type => :view do
  before(:each) do
    assign(:note, Note.new(
      :patient => nil,
      :user => nil,
      :primary_author => "MyString",
      :primary_institution => "MyString",
      :body_text => "MyText",
      :ocr => "MyText",
      :type => "",
      :title => "MyString"
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "input#note_patient_id[name=?]", "note[patient_id]"

      assert_select "input#note_user_id[name=?]", "note[user_id]"

      assert_select "input#note_primary_author[name=?]", "note[primary_author]"

      assert_select "input#note_primary_institution[name=?]", "note[primary_institution]"

      assert_select "textarea#note_body_text[name=?]", "note[body_text]"

      assert_select "textarea#note_ocr[name=?]", "note[ocr]"

      assert_select "input#note_type[name=?]", "note[type]"

      assert_select "input#note_title[name=?]", "note[title]"
    end
  end
end
