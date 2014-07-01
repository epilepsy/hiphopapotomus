require 'rails_helper'

RSpec.describe "charges/edit", :type => :view do
  before(:each) do
    @charge = assign(:charge, Charge.create!(
      :user => nil,
      :code => "MyString",
      :note => nil
    ))
  end

  it "renders the edit charge form" do
    render

    assert_select "form[action=?][method=?]", charge_path(@charge), "post" do

      assert_select "input#charge_user_id[name=?]", "charge[user_id]"

      assert_select "input#charge_code[name=?]", "charge[code]"

      assert_select "input#charge_note_id[name=?]", "charge[note_id]"
    end
  end
end
