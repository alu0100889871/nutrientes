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
end
