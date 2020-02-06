require "application_system_test_case"

class ContrsTest < ApplicationSystemTestCase
  setup do
    @contr = contrs(:one)
  end

  test "visiting the index" do
    visit contrs_url
    assert_selector "h1", text: "Contrs"
  end

  test "creating a Contr" do
    visit contrs_url
    click_on "New Contr"

    fill_in "A1", with: @contr.a1
    fill_in "A2", with: @contr.a2
    click_on "Create Contr"

    assert_text "Contr was successfully created"
    click_on "Back"
  end

  test "updating a Contr" do
    visit contrs_url
    click_on "Edit", match: :first

    fill_in "A1", with: @contr.a1
    fill_in "A2", with: @contr.a2
    click_on "Update Contr"

    assert_text "Contr was successfully updated"
    click_on "Back"
  end

  test "destroying a Contr" do
    visit contrs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contr was successfully destroyed"
  end
end
