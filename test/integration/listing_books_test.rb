#rake test test/integration/listing_books_test.rb
class ListingBooksTest < ActionDispatch::IntegrationTest
  setup do
    Book.create!(title: 'Moon', rating: 4)
    Book.create!(title: 'Sun', rating: 5)
  end
  
  test 'listing books' do
    get '/books'
    
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
    
    assert_equal Book.count, JSON.parse(response.body).size
  end
  
  test 'lists top rated books' do
    get '/books?rating=5'
    
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
    
    assert_equal 1, JSON.parse(response.body).size
  end
end