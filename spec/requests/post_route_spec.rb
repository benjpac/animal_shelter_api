require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'test_animal', :species => 'test_species', :age => 2 }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['name']).to eq('test_animal')
  end

  it 'returns the animal species' do
    expect(JSON.parse(response.body)['species']).to eq('test_species')
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['age']).to eq(2)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end