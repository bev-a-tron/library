require 'spec_helper'

describe Book do

  before :each do
    @book = Book.new 'Title', 'Author', :category
  end

  describe '#new' do
    it 'returns a new book object' do
      expect(@book).to be_an_instance_of Book
    end

    it 'throws ArgumentError when given fewer than 3 params' do
      expect(lambda { Book.new 'Title', 'Author' }).to raise_exception ArgumentError
    end
  end

  describe '#title' do
    it 'returns the correct title' do
      expect(@book.title).to eql 'Title'
    end
    it 'returns the correct author' do
      expect(@book.author).to eql 'Author'
    end
    it 'returns the correct category' do
      expect(@book.category).to eql :category
    end
  end

end