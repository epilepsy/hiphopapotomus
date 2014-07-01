require 'rails_helper'

RSpec.describe "patients/new", :type => :view do
  before(:each) do
    assign(:patient, Patient.new(
      :given_name => "MyString",
      :family_name => "MyString",
      :sex => "MyString"
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

      assert_select "input#patient_given_name[name=?]", "patient[given_name]"

      assert_select "input#patient_family_name[name=?]", "patient[family_name]"

      assert_select "input#patient_sex[name=?]", "patient[sex]"
    end
  end
end
