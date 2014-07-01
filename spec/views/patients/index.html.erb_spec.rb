require 'rails_helper'

RSpec.describe "patients/index", :type => :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        :given_name => "Given Name",
        :family_name => "Family Name",
        :sex => "Sex"
      ),
      Patient.create!(
        :given_name => "Given Name",
        :family_name => "Family Name",
        :sex => "Sex"
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "Given Name".to_s, :count => 2
    assert_select "tr>td", :text => "Family Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
  end
end
