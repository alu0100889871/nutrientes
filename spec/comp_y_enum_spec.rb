require "./lib/gema/alimento.rb"
require "./lib/gema/listadll.rb"
require "./spec/spec_helper"
describe Alimento do
	before :all do
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
		@food20 = Alimento.new("Mantequilla", 0.7, 0.0, 83.2)
		@food21 = Alimento.new("Calabaza", 1.1, 4.8, 0.1)
		@food22 = Alimento.new("Pera", 0.5, 12.7, 0.3)

		@lista = Listadll.new()

		@grupo1 = [@food1, @food2, @food3]
		@grupo2 = [@food4, @food5, @food6]
		@grupo3 = [@food7, @food8, @food9]
		@grupo4 = [@food10, @food11, @food20]
		@grupo5 = [@food12, @food13, @food14, @food15]
                @grupo6 = [@food16, @food17, @food21]
                @grupo7 = [@food18, @food19, @food22]

		@food_grupo_1= Alimento_grupo.new(@food1,"Huevos, lácteos y helados")
		@food_grupo_2= Alimento_grupo.new(@food4,"Carnes y derivados")
		@food_grupo_3= Alimento_grupo.new(@food7,"Pescados y mariscos")
		@food_grupo_4= Alimento_grupo.new(@food10,"Alimentos grasos")
		@food_grupo_5= Alimento_grupo.new(@food12,"Alimentos ricos en carbohidratos")
		@food_grupo_6= Alimento_grupo.new(@food16,"Verduras y Hortalizas")
		@food_grupo_7= Alimento_grupo.new(@food18,"Frutas")
		     
	end


	describe "Comparable con Alimento" do
		it "#Se hacer correctamente el >" do
			expect(@food1 > @food4).to eq(true)
		end
		it "#Se hacer correctamente el >=" do
			expect(@food1 >= @food5).to eq(true)
		end
		it "#Se hacer correctamente el <" do
			expect(@food2 < @food5).to eq(true)
		end
		it "#Se hacer correctamente el <=" do
			expect(@food5 <= @food3).to eq(false)
		end
		it "#Se hacer correctamente el entre dos valores" do
			expect(@food5.between?(@food2, @food1)).to eq(true)
		end
	end

	describe "Enumerable con lista de numeros" do
		before :all do

			@list=Listadll.new()
			@list.pushfront([1,12,18])

		end
		it "#Se hacer correctamente min" do
			expect(@list.min).to eq(1)
		end
		it "#Se hacer correctamente sort" do
			expect(@list.sort).to eq([1,12,18])
		end
		it "#Se hacer correctamente max" do
			expect(@list.max).to eq(18)
		end
		it "#Se hacer correctamente collect" do
			expect(@list.collect{ |x| x*x }).to eq([1, 144, 324 ])
		end
		it "#Se hacer correctamente map" do
			expect(@list.map { |x| x*2  }).to eq([2, 24, 36])
		end
		it "#Se hacer correctamente find" do
			expect(@list.find{ |x| x==18 }).to eq(18)
		end

	end

	describe "Enumerable con lista de alimentos" do
		before :each do

			@list=Listadll.new()
			@list.pushfront([@food1, @food2 ,@food3 ,@food4, @food5])

		end
		it "#Se hacer correctamente min" do
			expect(@list.min).to eq(@food2)
		end
		it "#Se hacer correctamente sort" do
			expect(@list.sort).to eq([@food2, @food3 ,@food5 ,@food4, @food1])
		end
		it "#Se hacer correctamente max" do
			expect(@list.max).to eq(@food1)
		end
		it "#Se hacer correctamente collect" do
			expect(@list.collect{ |x| x.proteinas*2 }).to eq([28.2, 6.6, 7.6, 43.0, 42.2])

		end
		it "#Se hacer correctamente map" do
			expect(@list.map { |x| x.get_valor_energetico }).to eq([231.9, 61.2, 69.0, 142.7, 112.30000000000001])
		end
		it "#Se hacer correctamente find" do
			expect(@list.find{ |x| x==@food5 }).to eq(@food5)
		end


	end
end


