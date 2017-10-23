require "lib/gema/alimento.rb"
describe Alimento do
	before :each do         
		@food1 = Alimento.new("Huevo frito")     
	end
	describe "# Existencia de la descripcion del titulo" do
   		it "Se almacena correctamente el nombre del alimento" do
   			expect(@food1.name).to eq("Huevo frito")
  		end 
	end
end
