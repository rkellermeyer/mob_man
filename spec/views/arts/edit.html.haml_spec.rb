require 'spec_helper'

describe "arts/edit" do
  before(:each) do
    @art = assign(:art, stub_model(Art,
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit art form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => arts_path(@art), :method => "post" do
      assert_select "input#art_title", :name => "art[title]"
      assert_select "input#art_description", :name => "art[description]"
    end
  end
end
