require 'rails_helper'

RSpec.describe "notes/show", :type => :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :patient => nil,
      :user => nil,
      :primary_author => "Primary Author",
      :primary_institution => "Primary Institution",
      :body_text => "MyText",
      :ocr => "MyText",
      :type => "Type",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Primary Author/)
    expect(rendered).to match(/Primary Institution/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Title/)
  end
end
