require "/home/victoria/LPP17-18/practicaLPP/lib/gema/alimento.rb"
require "spec_helper"
require 'benchmark'
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
        	@array = [@food1, @food2, @food3, @food4, @food5, @food6, @food7, @food8, @food9, @food10, @food11, @food12, @food13, @food14, @food15, @food16, @food17, @food18, @food19, @food20, @food21, @food22]
		
	end
	describe "For, each y sort" do
		Benchmark.bm do |x|
			x.report("for:")   {
		   		it "#Se realiza correctamente el for" do
					aux=[]
					indice=-1
					for i in 0..@array.length-1
					    if(aux.empty? == true) 
						aux << @array[i]
					    else
						for j in 0..aux.length-1
							indice=-1
						    if(@array[i] < aux[j])
							indice=j
							break
						    end
						end
						   
						if(indice == -1)
						    aux << @array[i]
						else 
						    aux.insert(indice, @array[i])
						end
					    end
				
					end
					expect(aux).to eq([@food16,@food21, @food17, @food18, @food22, @food2, @food3, @food15, @food7, @food19, @food5, @food6, @food4, @food9, @food8, @food1, @food14, @food13, @food11, @food12, @food20, @food10])	

				end
			}
			x.report("each:")   {	
				it "#Se realiza correctamente el each" do
					aux2=[]
					indice2=-1
					@array.each do |i|
					    if(aux2.empty? == true) 
						aux2 << i
					    else
						aux2.each_with_index do |val,index|
							indice2=-1
						    if(i < val)
							indice2=index
							break
						
						    end
						end
						if(indice2 == -1)
						    aux2 << i
						else 
						    aux2.insert(indice2, i)
						end
					    end
				    	end
					expect(aux2).to eq([@food16,@food21, @food17, @food18, @food22, @food2, @food3, @food15, @food7, @food19, @food5, @food6, @food4, @food9, @food8, @food1, @food14, @food13, @food11, @food12, @food20, @food10])	

				end
			}
			x.report("sort:")   {
			it "#Se realiza correctamente el sort" do
					aux3=@array.sort
					expect(aux3).to eq([@food16,@food21, @food17, @food18, @food22, @food2, @food3, @food15, @food7, @food19, @food5, @food6, @food4, @food9, @food8, @food1, @food14, @food13, @food11, @food12, @food20, @food10])	
		
				end
			}
		end	
	end

end
