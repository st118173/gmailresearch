require 'rails_helper'

RSpec.describe "emails/show", type: :view do
  before(:each) do
    @email = assign(:email, Email.create!(
      :mailid => "Mailid"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Mailid/)
  end
end
