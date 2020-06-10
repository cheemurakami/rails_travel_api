require 'rails_helper'

describe "post a review route", :type => :request do
  
  before do
    sign_up({:email => 'kiwi@murakami.com', :password => '123456'})
    token = auth_tokens_for_user({:email => 'kiwi@murakami.com', :password => '123456'})
   
    post '/api/v1/reviews', params: { :author => 'test_author', :content => 'test_content', :place => 'test_place' }, headers: token 
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['author']).to eq('test_author')
  end
  it 'returns the content' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end
  it 'returns the place' do
    expect(JSON.parse(response.body)['place']).to eq('test_place')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end