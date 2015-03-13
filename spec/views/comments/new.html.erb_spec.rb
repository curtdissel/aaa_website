require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :event_id => 1,
      :details => "MyText",
      :author => "MyString"
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_event_id[name=?]", "comment[event_id]"

      assert_select "textarea#comment_details[name=?]", "comment[details]"

      assert_select "input#comment_author[name=?]", "comment[author]"
    end
  end
end
