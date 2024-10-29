require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "max 40" do 
    task = Task.new(body: "1231345456786567543234543456787656787654322", user_id: 2)

    assert_not task.save, "Saved the article with a title shorter than 3 characters"
    assert_includes task.errors[:body], "is too short (minimum is 3 characters)"
  end
end
