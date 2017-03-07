require 'test_helper'

class GrocersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grocer = grocers(:one)
  end

  test "should get index" do
    get grocers_url
    assert_response :success
  end

  test "should get new" do
    get new_grocer_url
    assert_response :success
  end

  test "should create grocer" do
    assert_difference('Grocer.count') do
      post grocers_url, params: { grocer: {  } }
    end

    assert_redirected_to grocer_url(Grocer.last)
  end

  test "should show grocer" do
    get grocer_url(@grocer)
    assert_response :success
  end

  test "should get edit" do
    get edit_grocer_url(@grocer)
    assert_response :success
  end

  test "should update grocer" do
    patch grocer_url(@grocer), params: { grocer: {  } }
    assert_redirected_to grocer_url(@grocer)
  end

  test "should destroy grocer" do
    assert_difference('Grocer.count', -1) do
      delete grocer_url(@grocer)
    end

    assert_redirected_to grocers_url
  end
end
