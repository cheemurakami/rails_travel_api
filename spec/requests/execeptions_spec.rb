require 'rails_helper'

describe 'exception handling for routes', :type => :request do 
  before do 
    post '/reviews', params: { :author => 'test_author', :content => 'test_content', :place => '' }
  end
  it 'returns a RecordInvalid error error' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end