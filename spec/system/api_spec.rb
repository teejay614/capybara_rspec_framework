# api_spec.rb

require 'httparty'
require 'rspec'

describe 'API Testing https://jsonplaceholder.typicode.com/posts' do
  it 'should retrieve a list of posts' do
    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')
    
    expect(response.code).to eq(200)
    expect(response.headers['content-type']).to include('application/json')

    parsed_response = JSON.parse(response.body)
    expect(parsed_response).to be_an(Array)
  end

  it 'should retrieve a specific post' do
    post_id = 1
    response = HTTParty.get("https://jsonplaceholder.typicode.com/posts/#{post_id}")
    
    expect(response.code).to eq(200)
    expect(response.headers['content-type']).to include('application/json')

    parsed_response = JSON.parse(response.body)
    expect(parsed_response['id']).to eq(post_id)
  end

  # Add more tests as needed
end
