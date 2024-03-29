require 'rails_helper'

RSpec.describe "patients/edit", :type => :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :given_name => "MyString",
      :family_name => "MyString",
      :sex => "MyString"
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input#patient_given_name[name=?]", "patient[given_name]"

      assert_select "input#patient_family_name[name=?]", "patient[family_name]"

      assert_select "input#patient_sex[name=?]", "patient[sex]"
    end
  end
end
