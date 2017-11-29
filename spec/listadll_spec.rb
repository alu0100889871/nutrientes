require "./lib/gema/alimento.rb"
require "./lib/gema/listadll.rb"
require "./spec/spec_helper"
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

		it "#Se extrae el último elemento de la Lista" do
			expect(@lista.popback).to eq(15)
		end
		
		
 	end

	describe "Pruebas para los grupos de alimentos" do
		      
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
    
 
		it "#Se puede insertar un alimento" do 
			expect(@lista.pushfront(@food1)).to eq(@food1)
		end
                
                it "#Se imprime la lista" do 
			expect(@lista.to_s).to eq("\nAlimento:\n\nHuevo frito\t14.1g\t0.0g\t19.5g\t\n")
		end
                
		it "#Se pueden insertar varios alimentos en un grupo" do 
			expect(@lista.pushfront(@grupo1)).to eq(@food3)
		end
		
		it "#Se puede sacar varios alimentos" do 
			expect(@lista.popback).to eq(@food1)
			expect(@lista.popback).to eq(@food1)
			expect(@lista.popback).to eq(@food2)
			expect(@lista.popback).to eq(@food3)

		end
			it "#Comprueba el nombre del grupo de alimentos" do 
				expect(@food_grupo_1.grupo).to eq("Huevos, lácteos y helados")
			end
		      
			it "#Pertenece a las clases de jerarquía, herencia(Alimento_Grupo)" do 
				expect(@food_grupo_1.is_a?Alimento_grupo).to eq(true)
			end
			it "#Pertenece a Object" do
                		expect(@food_grupo_1.is_a?Object).to eq(true)
            		end
			it "#Instancia de Alimento_Grupo" do
                		expect(@food_grupo_1.instance_of?Alimento_grupo).to eq(true)
            		end
            		it "#No es instancia de Object" do
                		expect(@food_grupo_1.instance_of?Object).to eq(false)
            		end
            		it "#No es instancia de Class" do
                		expect(@food_grupo_1.instance_of?Class).to eq(false)
            		end
            		it "#Respuesta a los métodos heredados de Alimentos" do
                		expect(@food_grupo_1.respond_to?:get_name).to eq(true)
                		expect(@food_grupo_1.respond_to?:get_proteinas).to eq(true)
            		end
	end
end
