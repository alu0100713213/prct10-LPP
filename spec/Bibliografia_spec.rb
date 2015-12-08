require 'spec_helper'
require 'Bibliografia'

describe Bibliografia do
	before :all do

	@l1 = Bibliografia::Libro.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', '2323', 'Pragmatic Bookshelf', 'edicion 2', 4, 'July 7', 2013, ['9781937785499', '1937785491'])
	end
	
	describe "#PRUEBAS DE LOS LIBROS" do
		it "Debe existir un titulo" do
		 expect(@l1.titulo).to eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
		end
		it "Debe existir una serie" do
		     expect(@l1.serie).to eq('2323')
		end
		it "Debe existir una editorial" do
		     expect(@l1.num_editorial).to eq('Pragmatic Bookshelf')
		end	
		it "Debe existir un día" do
		     expect(@l1.dia).to eq(4)
		end
		it "Debe existir un mes" do
		     expect(@l1.mes).to eq('July 7')
		end
		it "Debe existir un año" do
		     expect(@l1.ano).to eq(2013)
		end
	end
end




