require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "input#answer_title[name=?]", "answer[title]"

      assert_select "textarea#answer_content[name=?]", "answer[content]"
    end
  end
end
