require 'rails_helper'

RSpec.describe "patients/show", :type => :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :given_name => "Given Name",
      :family_name => "Family Name",
      :sex => "Sex"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Given Name/)
    expect(rendered).to match(/Family Name/)
    expect(rendered).to match(/Sex/)
  end
end
