require 'test_helper'

class DoorPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @door_person = door_people(:one)
  end

  test "should get index" do
    get door_people_url
    assert_response :success
  end

  test "should get new" do
    get new_door_person_url
    assert_response :success
  end

  test "should create door_person" do
    assert_difference('DoorPerson.count') do
      post door_people_url, params: { door_person: { door_id: @door_person.door_id, person_id: @door_person.person_id } }
    end

    assert_redirected_to door_person_url(DoorPerson.last)
  end

  test "should show door_person" do
    get door_person_url(@door_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_door_person_url(@door_person)
    assert_response :success
  end

  test "should update door_person" do
    patch door_person_url(@door_person), params: { door_person: { door_id: @door_person.door_id, person_id: @door_person.person_id } }
    assert_redirected_to door_person_url(@door_person)
  end

  test "should destroy door_person" do
    assert_difference('DoorPerson.count', -1) do
      delete door_person_url(@door_person)
    end

    assert_redirected_to door_people_url
  end
end
