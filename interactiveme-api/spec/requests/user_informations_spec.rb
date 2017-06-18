require 'rails_helper'

RSpec.describe 'user_informations api', type: :request  do

	let!(:user_informations) { create_list(:user_informations, 10) }
	let(:user_information_id) { user_informations.first.id }

	describe 'GET /user_informations' do

		before { get '/user_informations' }

		it 'returns /user_informations' do

			expect(JSON).not_to be_empty
			expect(JSON).to eq(10)

		end

		it 'returns status code 200' do
			expect(response).to have_http_status(200)
		end

	end

	describe 'GET /user_informations/:id' do
		before { get "/user_informations/#{'user_information_id'}" }

		context 'when the record exists' do
			it 'returns the user_informations' do
				expect(json).not_to be_empty
				expect(json['id']).to eq(user_informations_id)
			end
			it 'returns status code 200' do
				expect(response).to have_http_status(200)
			end

		end

		context 'when the record does not exists' do
			let (:user_informations_id) {100}

			it 'returns status code 404' do
				expect(response).to have_http_status(404)	
			end

			it 'returns a not found message' do
				expect(response.body).to match(/Couldn't find user_informations/)
			end

		end
			
	end

	describe 'POST /user_informations' do
		let (:valid_attributes) { { email: 'yoseph@wijaya.com', password: '123456', status: 0 } }

		context 'when the request is valid' do
			before { post '/user_informations', params: valid_attributes}

			it 'creates a user_informations' do
				expect(json['email']).to eq('yoseph@wijaya.com')
			end

			it 'returns status code 201' do
				expect(response).to have_http_status(201)
			end



		end

		context 'when the request is invalid' do 

			before { post '/user_informations', params: { email: 'foobar' } }

			it 'returns status code 422' do
				expect(response).to have_http_status(422)
			end

			it 'returns a validation failure message' do
				expect(response.body).to match(/validation failed: created  by joseph/)
			end

		end

	end

	describe 'PUT /user_informations/:id' do
    	let(:valid_attributes) { { email: 'yoseph@wijaya.com', password: '123456', status: 0 } }

    	context 'when the record exists' do
      	before { put "/user_informations/#{user_information_id}", params: valid_attributes }

      		it 'updates the record' do
       			expect(response.body).to be_empty
      		end

      		it 'returns status code 204' do
        		expect(response).to have_http_status(204)
      		end
    	end
  	end

  	describe 'DELETE /user_informations/:id' do
  		before { delete "/user_informations/#{user_information_id}" }

  		it 'returns status code 204' do
  			expect(response).to have_http_status(204)
  		end
  	end

end
