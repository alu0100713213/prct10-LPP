require 'spec_helper'
require 'Bibliografia'

describe Bibliografia do

	#DECLARACIÓN DE LOS OBJETOS EN UNA ESTRUCTURA before :all do
	before :all do

# Libro 
	@l1 = Bibliografia::Libro.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', '2323', 'Pragmatic Bookshelf', 'edicion 2', 4, 'July 7', 2013, ['9781937785499', '1937785491'])
	
# Artículo de Revista
	@r1 = Bibliografia::Art_Revista.new(['Philip','Guss'],['Jhon','William'], 'MundoAbierto', 2, 'July', 2015, 'Estados Unidos', 'Inglés')

# Artículo de Periodico
	@art_perio1 = Bibliografia::Art_Periodico.new(['Philip','Guss'],['Jhon','William'], 2, 'July', 2015, 'La inversión en el oro', 'El Pais', '102')

# Documento electrónico
	@doc1 = Bibliografia::Doc_Digital.new(['Philip','Guss'],['Jhon','William'], 'La estrella y sus gases', 'Edicion 1', 'Web',  2, 'July', 2015, 'España', 'http://')

# Citas y ref. con el formato de la Asociación de Psicológica Americana (APA)
        @c = Bibliografia::Cita_APA.new
	@b1 = Bibliografia::Libro.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', '2323', 'Pragmatic Bookshelf', 'edicion 2', 4, 'July 7', 2013, ['9781937785499', '1937785491'])


	# Se inicializan nodos, para las pruebas con los nodos

		@nodo1 = Node.new(@l1,nil,nil)

	# Se inicializa las listas y se pushean los libros

		@milista = Bibliografia::Lista.new()
		@milista1 = Bibliografia::Lista.new()
		@lista_vacia = Bibliografia::Lista.new()
		@milista.push(@l1)

	end
	
	describe "# TEST - Objeto Tipo Libro" do
		it "Debe existir un titulo" do
		 expect(@l1.titulo).to eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
		end
		it "Debe existir una serie" do
		     expect(@l1.serie).to eq('2323')
		end
		it "Debe existir una editorial" do
		     expect(@l1.num_editorial).to eq('Pragmatic Bookshelf')
		end
		it "Debe existir un número de edición" do
		     expect(@l1.edicion).to eq('edicion 2')
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
		it "Debe existir uno o varios isbn" do
		     expect(@l1.isbn).to eq(['9781937785499','1937785491'])
		end
	end

	describe '# TEST - Pruebas con el objeto Nodo' do
		it 'Prueba de la declaración de la clase nodo' do 
			expect(@nodo1).to respond_to(:value)
			expect(@nodo1.value).to eq(@l1)	
		end
		
		it 'Debe existir un nodo de la lista con sus datos y su siguiente' do
			expect(@nodo1).to respond_to(:value)
			expect(@nodo1).to respond_to(:next)
			expect(@nodo1).to respond_to(:prev)
		end
	end

	describe '# TEST - Pruebas con el objeto Lista' do
		it 'Se puede insertar un elemento en la lista' do
			@milista.push(@r1)
		end
		it 'Se puede insertar varios elementos a la lista' do
			@milista.push(@r2)
			@milista.push(@r3)
		end
		it 'Se puede extraer elementos de la lista' do
			aux = @milista.pop
			aux = aux.value
		
		end

	end

	describe '# TEST - Test con las Citas de la APA'
	
	end
end

