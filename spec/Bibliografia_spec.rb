require 'spec_helper'
require 'Bibliografia'

describe Bibliografia do

	#DECLARACIÓN DE LOS OBJETOS EN UNA ESTRUCTURA before :all do
	before :all do

# Libro 
	@l1 = Bibliografia::Libro.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', '2323', 'Pragmatic Bookshelf', 'edicion 2', 4, 'July 7', 2013, ['9781937785499', '1937785491'])
	@l2 = Bibliografia::Libro.new('Chacon', 'Scott', 'Pro Git', '2009th Edition', 'Pro Apress', '2009 Edition', 27, 'August', 2009, ['978-1430218333', '1430218339'])	

# Artículo de Revista
	@r1 = Bibliografia::Art_Revista.new(['Philip','Guss'],['Jhon','William'], 'MundoAbierto', 2, 'July', 2015, 'Estados Unidos', 'Inglés')

# Artículo de Periodico
	@art_perio1 = Bibliografia::Art_Periodico.new(['Philip','Guss'],['Jhon','William'], 2, 'July', 2015, 'La inversión en el oro', 'El Pais', '102')

# Documento electrónico
	@doc1 = Bibliografia::Doc_Digital.new(['Philip','Guss'],['Jhon','William'], 'La estrella y sus gases', 'Edicion 1', 'Web',  2, 'July', 2015, 'España', 'http://')

# Citas y ref. con el formato de la Asociación de Psicológica Americana (APA)
        @c = Bibliografia::Cita_APA.new
	@b1 = Bibliografia::Libro.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', '2323', 'Pragmatic Bookshelf', 'edicion 2', 4, 'July', 2013, ['9781937785499', '1937785491'])
	@b2 = Bibliografia::Libro.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide', '2323', 'Pragmatic Bookshelf', 'edicion 2', 4, 'July', 2015, ['9781937785499', '1937785491'])
	@b3 = Bibliografia::Libro.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', '2323', 'Pragmatic Bookshelf', 'edicion 2', 4, 'July', 2013, ['9781937785499', '1937785491'])
	@b4 = Bibliografia::Libro.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', '2323', 'Pragmatic Bookshelf', 'edicion 2', 4, 'July', 2013, ['9781937785499', '1937785491'])


	# Se inicializan nodos, para las pruebas con los nodos

		@nodo1 = Node.new(@l1,nil,nil)
		@nodo2 = Node.new(@l2,nil,nil)

	# Se inicializa las listas y se pushean los libros

		@milista = Bibliografia::Lista.new()
		@milista1 = Bibliografia::Lista.new()
		@lista_vacia = Bibliografia::Lista.new()
		@milista.push(@l1)

	# Metemos los libros en la lista 1 para pruebas enumerables

                @milista1.push(@l1)
                @milista1.push(@l2)
                @milista1.push(@r1)
#                @milista1.push(@art_perio1)

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

	describe "# TEST - Pruebas con la Bibliografia y Comparable" do
		it '# Probando el operador menor - Libro1 < Libro2 ' do	
 			expect(@l1 < @l2).to eq(false)
		end
		it '# Probando el operador menor - Libro1 > Libro2 ' do	
 			expect(@l1 > @l2).to eq(true)
		end
		it '# Probando el operador igual - Libro1 = Libro2 ' do	
 			expect(@l1 == @l2).to eq(false)
		end
		it '# Probando el operador menor-igual - Libro1 <= Libro2 ' do	
 			expect(@l1 <= @l2).to eq(false)
		end
		it '# Probando el operador mayor-igual - Libro1 => Libro2 ' do	
 			expect(@l1 >= @l2).to eq(true)
		end
	end

	describe '# TEST - Pruebas con la Lista y Enumerable' do
		it "Prueba para el metodo find" do	
			expect(@milista1.find{|i| i== @r1}).to eq(@r1)
		end
		it "Prueba para el metodo sort" do	
#			expect(@milista1.sort).to eq([@r1, @l2, @l1])
		end	

		it "Prueba para el metodo all para probar si esta vacio" do	
			expect(@milista1.all?).to eq(true)
			expect(@lista_vacia.all?).to eq(false)
		end	

		it "Prueba para el metodo any" do	
			expect(@milista.any?).to eq(true)
			expect(@lista_vacia.any?).to eq(false)
		end	

		it "Prueba con el metodo max" do
#			expect(@milista.max).to eq(@l1)
		end

		it "Prueba con el metodo min" do
#			expect(@milista.min).to eq(@l2)
		end

        end


#       PRÁCTICA 10           #

	describe '# PRÁCTICA 10 - Test con las Citas de la APA' do
		it "Los nombres estan invertidos (Nombre -- Apellido)" do
			expect(@c.nombre(@b1)).to eq("Thomas, D., Hunt, A. & Fowler, C.")
		end	
		it "El orden de entrada es correcto" do
			@c.insert(@b1)
			@c.insert(@b3)
			expect(@c.nombre(@c.list2[0])).to eq("Thomas, D., Hunt, A. & Fowler, C.")
			expect(@c.nombre(@c.list2[1])).to eq("Thomas, D., Hunt, A. & Fowler, C.")
		end

		it "Ordena por fecha de publicacion cuando el autor es el mismo" do
			@c.insert(@b1)
			@c.insert(@b3)
			@c.insert(@b4)
			expect(@c.list2[1].ano).to eq(2013)
		end

		it "Si un autor aparece solo y el primero de un grupo que ponga primero el que sale solo" do
			@c.insert(@b1)
			@c.insert(@b3)
			expect(@c.nombre(@c.list2[0])).to eq("Thomas, D., Hunt, A. & Fowler, C.")
		end

		it "Si un autor aparece solo y el primero de un grupo que ponga primero el que sale solo" do
			@c.insert(@b1)
			@c.insert(@b3)
			expect(@c.nombre(@c.list2[0])).to eq("Thomas, D., Hunt, A. & Fowler, C.")
		end

		it "Mismos autores y el mismo año de publicacion" do
			@c.insert(@b1)
			@c.insert(@b3)
			expect(@c.list2[0].titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide")
		end

		it "Utilizar & en lugar de 'y' o de 'and'" do
			@c.insert(@b1)
			expect(@c.nombre(@c.list2[0])).to eq("Thomas, D., Hunt, A. & Fowler, C.")
		end
		it "Todas las líneas después de la primera linea tiene que tener una sangría" do
			@c.insert(@b1)
			expect(@c.show(@b1)).to eq("Thomas, D., Hunt, A. & Fowler, C.\n   Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide\n   (2323)\n   Pragmatic Bookshelf; edicion 2 edition (4July2013)\n   1")
		end
	end
end

