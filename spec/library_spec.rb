require 'spec_helper'

describe 'Library Object' do

  let(:lib_arr) { [
      Book.new('JavaScript: The Good Parts', 'Douglas Crockford', :development),
      Book.new('Designing with Web Standards', 'Jeffrey Zeldman', :design),
      Book.new('Don\'t Make Me Think', 'Steve Krug', :usability),
      Book.new('JavaScript Patterns', 'Stoyan Stefanov', :development),
      Book.new('Responsive Web Design', 'Ethan Marcotte', :design)
  ] }

  ########## Just run this once to create YAML file ###################
  # File.open 'books.yml', 'w' do |f|
  #   f.write YAML::dump lib_arr
  # end

  let(:lib) { Library.new 'books.yml' }
  let(:lib_empty) { Library.new }

  describe '#new' do
    context 'with no parameters' do
      it 'has no books' do
        expect(lib_empty.books.length).to eq(0)
      end
    end

    context 'with a yaml file name parameter' do
      it 'has five books' do
        expect(lib.books.length).to eq(5)
      end
    end
  end

end