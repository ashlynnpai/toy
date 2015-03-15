class ListCitiesTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }
    
  test 'returns a list of cities by size' do
    
    Paris = City.create!(name: 'Paris', size: 'large')
    Reno = City.create!(name: 'Reno', size: 'medium')
    Aspen = City.create!(name: 'Aspen', size: 'small')
    
    get '/cities?size=medium'
    assert_equal 200, response.status
    
    cities = JSON.parse(response.body, symbolize_names: true)
    names = cities.collect { |h| h[:name] }
    assert_includes names, 'Reno'
    refute_includes names, 'Paris'
  end
end