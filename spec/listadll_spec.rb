require "lib/gema/alimento.rb"
require "lib/gema/listadll.rb"

describe Listadll do

	before :all do
		@nod = Nodedll.new(12,nil,nil)
		@lista = Listadll.new()
	end

	describe "Nododll" do
     		it "#Debe existir un Nodo de la lista doblemente enlazada y el siguiente. Nodo inicializado correctamente" do
     			expect(@nod.value).to eq(12)
      			expect(@nod.prev).to eq(nil)
			expect(@nod.next).to eq(nil)
			
        	end
	end
	describe "Listadll" do
		it "#Se hace un push por delante" do 
			expect(@lista.pushfront(12)).to eq(12)
		end

		it "#Se hace un push por detras" do 
			expect(@lista.pushback(12)).to eq(12)
		end

		it "#Se pueden insertar varios elementos por delante" do
			expect(@lista.pushfront([13,14,15])).to eq(15)
		end

		it "#Se pueden insertar varios elementos por detras" do
			expect(@lista.pushback([13,14,15])).to eq(15)
		end
	
		it "#Debe existir una Lista con su cabecera" do
			expect(@lista.head.value).to eq(15)
		end

		it "#Debe existir una Lista con su cola" do
			expect(@lista.tail.value).to eq(15)
		end	

		it "#Se extrae el primer elemento de la Lista" do
			expect(@lista.popfront).to eq(15)
		end

		it "#Se extrae el ́ultimo elemento de la Lista" do
			expect(@lista.popback).to eq(15)
		end
		
		
 	end
end
