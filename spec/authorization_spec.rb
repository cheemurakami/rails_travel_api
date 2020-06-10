require  'rails_helper'
describe 'authorization test', :type => :request do
  
  it 'sign up and log in user one' do
    user_one = { email: 'userone@test.com', password: 'password' }
    sign_up(user_one)
    assert_response :success

    expect(response).to have_http_status(:success)
  
    @auth_tokens = auth_tokens_for_user(user_one)

    expect(@auth_tokens.keys).to eq(["client", "access-token", "uid"])
  end
  
end