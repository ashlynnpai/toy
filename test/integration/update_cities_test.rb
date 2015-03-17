#rake test test/integration/update_cities_test.rb
class UpdateCitiesTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }
  setup { @city = City.create!(name: 'Austin', size: 'small') }

  test 'successful update' do
    patch "/cities/#{@city.id}",
      { city: { name: 'Austin', size: 'large' } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 200, response.status
    assert_equal 'large', @city.reload.size
  end
end