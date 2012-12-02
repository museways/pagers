require 'test_helper'

class ActionViewEmptyTest < ActionView::TestCase
  include RailsPagination::ActionView::BaseMethods
  
  setup :create_pager
 
  test "should not have multiple pages" do
    assert !@pager.has_multiple_pages?
  end
  
  test "should not have first page" do
    assert !@pager.has_first_page?
  end
  
  test "should not have previous page" do
    assert !@pager.has_previous_page?
  end

  test "should not have next page" do
    assert !@pager.has_next_page?
  end

  test "should not have last page" do
    assert !@pager.has_last_page?
  end

  protected

  def create_pager
    @pager = paginate(Model.page(1).per(2), :navigate => 3, :parameter => :page)
  end

end