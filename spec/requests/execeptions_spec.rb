require 'rails_helper'

describe 'exception handling for routes', :type => :request do 
  before do 
    # user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd',:password_confirmation => 'f4k3p455w0rd' )
    # login_as(user, :scope => :user)
    post '/api/v1/reviews', params: { :author => 'test_author', :content => 'test_content', :place => '' }
  end
  it 'returns a RecordInvalid error error' do
    expect(response).to have_http_status(:unauthorized)
  end
end