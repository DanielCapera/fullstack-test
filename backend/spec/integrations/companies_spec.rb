require 'swagger_helper'

RSpec.describe 'Companies API', type: :request do
  path '/companies' do
    get('List companies') do
      tags 'Companies'
      produces 'application/json'

      response(200, 'successful') do
        run_test!
      end
    end

    post('Create company') do
      tags 'Companies'
      consumes 'application/json'
      parameter name: :company, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          sector: { type: :string },
          city_id: { type: :integer },
          phone: { type: :string },
          address: { type: :string },
          assets: { type: :number },
          liabilities: { type: :number }
        },
        required: %w[name sector city_id]
      }

      response(201, 'created') do
        let(:company) { { name: 'Mi empresa', sector: 'Tecnología', city_id: 1 } }
        run_test!
      end
    end
  end
end
