require 'rails_helper'

RSpec.describe "notes/index", :type => :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        :patient => nil,
        :user => nil,
        :primary_author => "Primary Author",
        :primary_institution => "Primary Institution",
        :body_text => "MyText",
        :ocr => "MyText",
        :type => "Type",
        :title => "Title"
      ),
      Note.create!(
        :patient => nil,
        :user => nil,
        :primary_author => "Primary Author",
        :primary_institution => "Primary Institution",
        :body_text => "MyText",
        :ocr => "MyText",
        :type => "Type",
        :title => "Title"
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Primary Author".to_s, :count => 2
    assert_select "tr>td", :text => "Primary Institution".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
