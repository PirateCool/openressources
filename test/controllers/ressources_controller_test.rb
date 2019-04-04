require 'test_helper'

class RessourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ressource = ressources(:one)
  end

  test "should get index" do
    get ressources_url
    assert_response :success
  end

  test "should get new" do
    get new_ressource_url
    assert_response :success
  end

  test "should create ressource" do
    assert_difference('Ressource.count') do
      post ressources_url, params: { ressource: { description: @ressource.description, name: @ressource.name, project: @ressource.project, url: @ressource.url } }
    end

    assert_redirected_to ressource_url(Ressource.last)
  end

  test "should show ressource" do
    get ressource_url(@ressource)
    assert_response :success
  end

  test "should get edit" do
    get edit_ressource_url(@ressource)
    assert_response :success
  end

  test "should update ressource" do
    patch ressource_url(@ressource), params: { ressource: { description: @ressource.description, name: @ressource.name, project: @ressource.project, url: @ressource.url } }
    assert_redirected_to ressource_url(@ressource)
  end

  test "should destroy ressource" do
    assert_difference('Ressource.count', -1) do
      delete ressource_url(@ressource)
    end

    assert_redirected_to ressources_url
  end
end
