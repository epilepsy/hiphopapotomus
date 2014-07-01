require 'rails_helper'

RSpec.describe "charges/index", :type => :view do
  before(:each) do
    assign(:charges, [
      Charge.create!(
        :user => nil,
        :code => "Code",
        :note => nil
      ),
      Charge.create!(
        :user => nil,
        :code => "Code",
        :note => nil
      )
    ])
  end

  it "renders a list of charges" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
