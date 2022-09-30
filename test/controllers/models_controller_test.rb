require "test_helper"

class ModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @model = models(:one)
  end

  test "should get index" do
    get models_url
    assert_response :success
  end

  test "should get new" do
    get new_model_url
    assert_response :success
  end

  test "should create model" do
    assert_difference("Model.count") do
      post models_url, params: { model: { Buddies: @model.Buddies, email: @model.email, first_name: @model.first_name, last_name: @model.last_name, phone: @model.phone, twitter: @model.twitter } }
    end

    assert_redirected_to model_url(Model.last)
  end

  test "should show model" do
    get model_url(@model)
    assert_response :success
  end

  test "should get edit" do
    get edit_model_url(@model)
    assert_response :success
  end

  test "should update model" do
    patch model_url(@model), params: { model: { Buddies: @model.Buddies, email: @model.email, first_name: @model.first_name, last_name: @model.last_name, phone: @model.phone, twitter: @model.twitter } }
    assert_redirected_to model_url(@model)
  end

  test "should destroy model" do
    assert_difference("Model.count", -1) do
      delete model_url(@model)
    end

    assert_redirected_to models_url
  end
end
