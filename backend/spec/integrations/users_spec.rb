# spec/integration/users_spec.rb
require 'swagger_helper'

RSpec.describe 'Users API', type: :request do
  path '/users' do
    get 'Get all users' do
      tags 'Users'
      produces 'application/json'

      response '200', 'users found' do
        schema type: :object,
               properties: {
                 users: {
                   type: :array,
                   items: {
                     type: :object,
                     properties: {
                       id: { type: :integer },
                       name: { type: :string },
                       email: { type: :string }
                     },
                     required: %w[id name email]
                   }
                 }
               }

        run_test!
      end
    end
  end
end
