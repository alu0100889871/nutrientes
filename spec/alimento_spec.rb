require "lib/gema/alimento.rb"
describe Alimento do
	before :each do  
       
		@food1 = Alimento.new("Huevo frito", 14.1, 0.0, 19.5)
		@food2 = Alimento.new("Leche vaca", 3.3, 4.8, 3.2)
		@food3 = Alimento.new("Yogurt", 3.8, 4.9, 3.8)
		@food4 = Alimento.new("Cerdo", 21.5, 0.0, 6.3)
		@food5 = Alimento.new("Ternera", 21.1, 0.0, 3.1)
		@food6 = Alimento.new("Pollo", 20.6, 0.0, 5.6)
		@food7 = Alimento.new("Bacalao", 17.7, 0.0, 0.4)
		@food8 = Alimento.new("Atún", 21.5, 0.0, 15.5)
		@food9 = Alimento.new("Salmón", 19.9, 0.0, 13.6)
		@food10 = Alimento.new("Aceite de Oliva", 0.0, 0.2, 99.6)
		@food11 = Alimento.new("Chocolate", 5.3, 47.0, 30.0)
		@food12 = Alimento.new("Azúcar", 5.3, 47.0, 30.0)
		@food13 = Alimento.new("Arroz", 6.8, 77.7, 0.6)
		@food14 = Alimento.new("Lentejas", 23.5, 52.0, 1.4)
		@food15 = Alimento.new("Papas", 2.0, 15.4, 0.1)
		@food16 = Alimento.new("Tomate", 1.0, 3.5, 0.2)
		@food17 = Alimento.new("Cebolla", 1.3, 5.8, 0.3)
		@food18 = Alimento.new("Manzana", 0.3, 12.4, 0.4)
		@food19 = Alimento.new("Plátanos", 1.2, 21.4, 0.2)
     
	end

	describe "# Existencia de las características del Alimento" do

   		it "Se almacena correctamente el nombre del alimento" do
   			expect(@food1.name).to eq("Huevo frito")
  		end 
   		it "Se almacena correctamente las proteínas del alimento" do
   			expect(@food1.proteinas).to eq(14.1)
  		end 
   		it "Se almacena correctamente los glúcidos del alimento" do
   			expect(@food1.glucidos).to eq(0.0)
  		end 
   		it "Se almacena correctamente los lípidos del alimento" do
   			expect(@food1.lipidos).to eq(19.5)
  		end 

	end

	describe "# Existencia de los métodos de la clase Alimento" do

   		it "Se realiza correctamente el to_s" do
   			expect(@food1.to_s).to eq("\nAlimento:\n\nHuevo frito\t14.1g\t0.0g\t19.5g")
  		end 
   		it "Se obtiene correctamente el nombre del alimento mediante el método get_name" do
   			expect(@food1.get_name).to eq("Huevo frito")
  		end 
   		it "Se obtiene correctamente las proteinas del alimento mediante el método get_proteinas" do
   			expect(@food1.get_proteinas).to eq(14.1)
  		end 
   		it "Se obtiene correctamente los glúcidos del alimento mediante el método get_glucidos" do
   			expect(@food1.get_glucidos).to eq(0.0)
  		end 
   		it "Se obtiene correctamente los lípidos del alimento mediante el método get_lipidos" do
   			expect(@food1.get_grasas).to eq(19.5)
  		end 
   		it "Se obtiene correctamente el valor calórico del alimento" do
   			expect(@food1.get_valor_energetico).to eq(231.9)
  		end 
	end
end
