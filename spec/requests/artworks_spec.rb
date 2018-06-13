# spec/requests/artworks_spec.rb
require 'rails_helper'

RSpec.describe 'Crescendo API', type: :request do
  # initialize test data
  let!(:artworks) { create_list(:artwork, 10) }
  let(:artwork_id) { artworks.first.id }

  # Test suite for GET /artworks
  describe 'GET /artworks' do
    # make HTTP get request before each example
    before { get '/artworks' }

    it 'returns artworks' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /artworks/:id
  describe 'GET /artworks/:id' do
    before { get "/artworks/#{artwork_id}" }

    context 'when the record exists' do
      it 'returns the artwork' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(artwork_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:artwork_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Artwork/)
      end
    end
  end

  # Test suite for POST /artworks
  describe 'POST /artworks' do
    # valid payload
    let(:valid_attributes) { { title: 'Learn Elm', created_on: DateTime.now } }

    context 'when the request is valid' do
      before { post '/artworks', params: valid_attributes }

      it 'creates a artwork' do
        expect(json['title']).to eq('Learn Elm')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/artworks', params: { title: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Created on can't be blank/)
      end
    end
  end

  # Test suite for PUT /artworks/:id
  describe 'PUT /artworks/:id' do
    let(:valid_attributes) { { title: 'Shopping' } }

    context 'when the record exists' do
      before { put "/artworks/#{artwork_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /artworks/:id
  describe 'DELETE /artworks/:id' do
    before { delete "/artworks/#{artwork_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
