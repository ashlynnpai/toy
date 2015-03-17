#rake test test/integration/create_cities_test.rb
class CreateCitiesTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }
  
  test 'create cities' do
    post '/cities', 
    { city: 
      { name: 'Taos', size: 'small' } 
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 422, response.status
    assert_equal Mime::JSON, response.content_type
  end
end
