require "application_system_test_case"

class MedicsTest < ApplicationSystemTestCase
  setup do
    @medic = medics(:one)
  end

  test "visiting the index" do
    visit medics_url
    assert_selector "h1", text: "Medics"
  end

  test "creating a Medic" do
    visit medics_url
    click_on "New Medic"

    fill_in "Address", with: @medic.address
    fill_in "City", with: @medic.city_id
    fill_in "Coord", with: @medic.coord
    fill_in "Email", with: @medic.email
    fill_in "Experience", with: @medic.experience
    fill_in "Name", with: @medic.name
    fill_in "Phone", with: @medic.phone
    fill_in "Price", with: @medic.price
    fill_in "Schedule", with: @medic.schedule
    fill_in "Score", with: @medic.score
    fill_in "Speciality", with: @medic.speciality
    click_on "Create Medic"

    assert_text "Medic was successfully created"
    click_on "Back"
  end

  test "updating a Medic" do
    visit medics_url
    click_on "Edit", match: :first

    fill_in "Address", with: @medic.address
    fill_in "City", with: @medic.city_id
    fill_in "Coord", with: @medic.coord
    fill_in "Email", with: @medic.email
    fill_in "Experience", with: @medic.experience
    fill_in "Name", with: @medic.name
    fill_in "Phone", with: @medic.phone
    fill_in "Price", with: @medic.price
    fill_in "Schedule", with: @medic.schedule
    fill_in "Score", with: @medic.score
    fill_in "Speciality", with: @medic.speciality
    click_on "Update Medic"

    assert_text "Medic was successfully updated"
    click_on "Back"
  end

  test "destroying a Medic" do
    visit medics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medic was successfully destroyed"
  end
end
