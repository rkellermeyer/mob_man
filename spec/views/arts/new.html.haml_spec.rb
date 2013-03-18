require 'spec_helper'

describe "arts/new" do
  before(:each) do
    assign(:art, stub_model(Art,
      :title => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new art form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => arts_path, :method => "post" do
      assert_select "input#art_title", :name => "art[title]"
      assert_select "input#art_description", :name => "art[description]"
    end
  end
end
