require 'spec_helper'
require 'Bibliografia'

describe Bibliografia do
	before :all do 
        @l1 = Bibliog.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7', 2013, ['9781937785499', '1937785491'], 'The Facets of Ruby')
        @l2 = Bibliog.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7', 2013, ['9781937785499', '1937785491'])
        @l3 = Bibliog.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Titulo2', 'Pragmatic Bookshelf', 4, 'July 7', 2013, ['9781937785499', '1937785491'], 'The Facets of Ruby')
        @l4 = Bibliog.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Titulo2', 'Editorial2', 4, 'July 7', 2013, ['9781937785499', '1937785491'], 'The Facets of Ruby')
    end

end

