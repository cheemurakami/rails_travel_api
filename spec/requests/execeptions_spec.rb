require 'rails_helper'

describe 'exception handling for routes', :type => :request do 
  before do 
    sign_up({:email => 'kiwi@murakami.com', :password => '123456'})
    token = auth_tokens_for_user({:email => 'kiwi@murakami.com', :password => '123456'})
    post '/api/v1/reviews', params: { :author => 'test_author', :content => 'test_content', :place => '' }, headers: token 
  end
  it 'returns a Unprocessable Entity error' do
    expect(response).to have_http_status(422)
  end
end