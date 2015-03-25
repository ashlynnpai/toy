#rake test test/integration/deleting_books_test.rb
class DeletingBooksTest < ActionDispatch::IntegrationTest
  setup do
    @book = Book.create!(title: 'Disposable')
  end
  test 'delete books' do
    delete "/books/#{@book.id}"
    
    assert_equal 204, response.status
  end
  
end