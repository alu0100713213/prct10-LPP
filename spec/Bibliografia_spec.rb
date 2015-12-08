require 'spec_helper'
require 'Bibliografia'

describe Bibliografia do

	#DECLARACIÓN DE LOS LIBROS

	before :all do
		@l1 = Bibliografia::Libro.new('Libro', 'Dave Thomas, Andy Hunt, Chad Fowler', 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide (The Facets of Ruby)', 'Pragmatic Bookshelf', '4 edition', '','July 7 2013', '978-1937785499', '1937785491')
		@l2 = Bibliografia::Libro.new('Libro', 'Scott Chacon', 'Pro Git 2009th Edition', '(Pro) Apress', '2009 edition', '', 'August 27, 2009', '978-1430218333', '1430218339')
		@l3 = Bibliografia::Libro.new('Libro', 'David Flanagan, Yukihiro Matsumoto','The Ruby Programming Language', '(Pro) Apress', '1 edition', '', '(Fe-bruary 4, 2008)', '0596516177', '978-059651')
		@l4 = Bibliografia::Libro.new('Libro', 'David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy', 'The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)', 'Pragmatic Bookshelf', '', '1 edition' ,'December 25, 2010' ,'1934356379', '978-1934356371')
		@l5 = Bibliografia::Libro.new('Libro', 'Richard E. Silverman', 'Git Pocket Guide','O’Reilly Media', '1 edition' , '', 'August 2, 2013', '1449325866', '978-1449325862')
		@r1 = Bibliografia::Revista.new('Publicación Periodica', 'Artículo de Revista', 'Sarah Romero', '15 años a bordo de la EEI', 'Muy Interesante', '2212844', '15 Septiembre de 2015', '2323123', 'EAS-2828391')
		@r2 = Bibliografia::Revista.new('Publicación Periodica', 'Artículo de Periodico', ' Javier Palazón / Laura Pajuelo ', 'El primer móvil con Android One', 'El Pais', '8889221', '16 Noviembre de 2015', '2929332', 'EAS-1447241991')
		@r3 = Bibliografia::Articulo_Digital.new('Publicación Periodica', 'Documento electronico', 'Juan Carlos González', 'Yamaha está desarrollando un espectacular robot capaz de conducir motos de alta cilindrada', 'http://www.xataka.com/robotica-e-ia/yamaha-esta-desarrollando-un-espectacular-robot-capaz-de-conducir-motos-de-alta-cilindrada', '1', '28 de Octubre de 2015')

	# Se inicializan nodos, para las pruebas con los nodos

		@nodo1 = Node.new(@l1,nil,nil)
		@nodo2 = Node.new(@l2,nil,nil)
		@nodo3 = Node.new(@l3,nil,nil)
		@nodo4 = Node.new(@l4,nil,nil)

	# Se inicializa las listas y se pushean los libros

		@milista = Bibliografia::Lista.new()
		@milista1 = Bibliografia::Lista.new()
		@lista_vacia = Bibliografia::Lista.new()

		@milista.push(@l1)
		@milista.push(@l2)
		@milista.push(@l3)
		@milista.push(@l4)
		@milista.push(@l5)

		@milista1.push(@l1)
		@milista1.push(@l2)
		@milista1.push(@l3)
	end	

	describe 'PRUEBAS CON EL NODO' do
		it '# Prueba de la declaración de la clase nodo' do 
			expect(@nodo1).to respond_to(:value)
			expect(@nodo1.value).to eq(@l1)	
		end
		
		it '# Debe existir un nodo de la lista con sus datos y su siguiente' do
			expect(@nodo1).to respond_to(:value)
			expect(@nodo1).to respond_to(:next)
			expect(@nodo1).to respond_to(:prev)
		end
	end

	describe 'PRUEBAS CON LA CLASE LISTA' do
		it '# Se puede insertar un elemento en la lista' do
			@milista.push(@r1)
		end
		it '# Se puede insertar varios elementos a la lista' do
			@milista.push(@r2)
			@milista.push(@r3)
		end
		it '# Se puede extraer elementos de la lista' do
			aux = @milista.pop
			aux = aux.value
		
		end

	end

	#   ----    PRÁCTICA 9   ----   #

	describe ' PRUEBAS CON LA LISTA Y ENUMERABLE' do
		it "Prueba para el metodo find" do	
			expect(@milista.find{|i| i== @l3}).to eq(@l3)
		end	

		it "Prueba para el metodo sort" do	
			expect(@milista1.sort).to eq([@l2, @l1, @l3])
		end	

		it "Prueba para el metodo all para probar si esta vacio" do	
			expect(@milista.all?).to eq(true)
			expect(@lista_vacia.all?).to eq(false)
		end	

		it "Prueba para el metodo any" do	
			expect(@milista.any?).to eq(true)
			expect(@lista_vacia.any?).to eq(false)
		end	
		
		it "Prueba con el metodo max" do
			expect(@milista.max).to eq(@l3)
		end

		it "Prueba con el metodo min" do
 			expect(@milista.min).to eq(@l5)
		end

	end

	describe "PRUEBAS CON LA BIBLIOGRAFIA Y COMPARABLE" do
		it '# Probando el operador menor - Libro1 < Libro2 ' do	
 			expect(@l1 < @l2).to eq(false)
		end
		it '# Probando el operador mayor - Libro1 > Libro2 ' do	
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
	#   ----    PRÁCTICA 9   ----   #
end
