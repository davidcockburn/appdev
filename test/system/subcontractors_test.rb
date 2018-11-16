require "application_system_test_case"

class SubcontractorsTest < ApplicationSystemTestCase
  setup do
    @subcontractor = subcontractors(:one)
  end

  test "visiting the index" do
    visit subcontractors_url
    assert_selector "h1", text: "Subcontractors"
  end

  test "creating a Subcontractor" do
    visit subcontractors_url
    click_on "New Subcontractor"

    fill_in "Accountname", with: @subcontractor.accountname
    fill_in "Email", with: @subcontractor.email
    fill_in "Fax", with: @subcontractor.fax
    fill_in "Tel", with: @subcontractor.tel
    click_on "Create Subcontractor"

    assert_text "Subcontractor was successfully created"
    click_on "Back"
  end

  test "updating a Subcontractor" do
    visit subcontractors_url
    click_on "Edit", match: :first

    fill_in "Accountname", with: @subcontractor.accountname
    fill_in "Email", with: @subcontractor.email
    fill_in "Fax", with: @subcontractor.fax
    fill_in "Tel", with: @subcontractor.tel
    click_on "Update Subcontractor"

    assert_text "Subcontractor was successfully updated"
    click_on "Back"
  end

  test "destroying a Subcontractor" do
    visit subcontractors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subcontractor was successfully destroyed"
  end
end
