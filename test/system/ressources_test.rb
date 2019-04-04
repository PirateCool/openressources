require "application_system_test_case"

class RessourcesTest < ApplicationSystemTestCase
  setup do
    @ressource = ressources(:one)
  end

  test "visiting the index" do
    visit ressources_url
    assert_selector "h1", text: "Ressources"
  end

  test "creating a Ressource" do
    visit ressources_url
    click_on "New Ressource"

    fill_in "Description", with: @ressource.description
    fill_in "Name", with: @ressource.name
    fill_in "Project", with: @ressource.project
    fill_in "Url", with: @ressource.url
    click_on "Create Ressource"

    assert_text "Ressource was successfully created"
    click_on "Back"
  end

  test "updating a Ressource" do
    visit ressources_url
    click_on "Edit", match: :first

    fill_in "Description", with: @ressource.description
    fill_in "Name", with: @ressource.name
    fill_in "Project", with: @ressource.project
    fill_in "Url", with: @ressource.url
    click_on "Update Ressource"

    assert_text "Ressource was successfully updated"
    click_on "Back"
  end

  test "destroying a Ressource" do
    visit ressources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ressource was successfully destroyed"
  end
end
