#rake test test/integration/list_cities_test.rb
class ListCitiesTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }
    
  test 'returns cities in JSON' do
    get '/cities', {}, { 'Accept' => Mime::JSON }  
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
  end

  test 'returns a list of cities by size' do
    
    Paris = City.create!(name: 'Paris', size: 'large')
    Reno = City.create!(name: 'Reno', size: 'medium')
    Aspen = City.create!(name: 'Aspen', size: 'small')
    
    get '/cities?size=medium&format=json'
    assert_equal 200, response.status
    
    cities = JSON.parse(response.body, symbolize_names: true)
    names = cities.collect { |h| h[:name] }
    assert_includes names, 'Reno'
    refute_includes names, 'Paris'
  end
  
  test 'returns city by id' do
    city = City.create!(name: 'Paris')
    
    get "/cities/#{city.id}", {}, { 'Accept' => Mime::JSON }   
    assert_equal 200, response.status

		city_response = JSON.parse(response.body, symbolize_names: true)
    assert_equal city.name, city_response[:name]
  end
end