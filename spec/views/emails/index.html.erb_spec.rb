require 'rails_helper'

RSpec.describe "emails/index", type: :view do
  before(:each) do
    assign(:emails, [
      Email.create!(
        :mailid => "Mailid"
      ),
      Email.create!(
        :mailid => "Mailid"
      )
    ])
  end

  it "renders a list of emails" do
    render
    assert_select "tr>td", :text => "Mailid".to_s, :count => 2
  end
end
