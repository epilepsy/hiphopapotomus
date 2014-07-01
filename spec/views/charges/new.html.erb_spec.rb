require 'rails_helper'

RSpec.describe "charges/new", :type => :view do
  before(:each) do
    assign(:charge, Charge.new(
      :user => nil,
      :code => "MyString",
      :note => nil
    ))
  end

  it "renders new charge form" do
    render

    assert_select "form[action=?][method=?]", charges_path, "post" do

      assert_select "input#charge_user_id[name=?]", "charge[user_id]"

      assert_select "input#charge_code[name=?]", "charge[code]"

      assert_select "input#charge_note_id[name=?]", "charge[note_id]"
    end
  end
end
