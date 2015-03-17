#rake test test/integration/delete_cities_test.rb
class DeleteCitiesTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }
  setup { @city = City.create!(name: 'Austin', size: 'small') }
  
  test 'deletes existing city' do
    delete "/cities/#{@city.id}"
    assert_equal 204, response.status
  end
end