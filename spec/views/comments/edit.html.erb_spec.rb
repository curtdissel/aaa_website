require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :event_id => 1,
      :details => "MyText",
      :author => "MyString"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_event_id[name=?]", "comment[event_id]"

      assert_select "textarea#comment_details[name=?]", "comment[details]"

      assert_select "input#comment_author[name=?]", "comment[author]"
    end
  end
end
