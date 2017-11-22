require "lib/gema/alimento2.rb"
describe Alimento2 do 
	before :each do 
		@glucosa = [[4.9, 5.3, 5.9, 6.7, 7.2, 7.6, 8.0, 8.2, 8.2, 8.4, 8.3, 8.3, 8.0, 7.5, 7.1, 6.8, 6.8, 6.9, 6.8, 6.3, 6.2, 6.3, 6.2, 6.3, 6.1],[6.3, 5.4, 5.6, 5.7, 6.5, 7.4, 7.9, 7.4, 7.7, 7.9, 7.9, 7.8, 7.8, 7.8, 8.0, 8.5, 9.4, 10.8, 10.5, 9.1, 8.9, 8.3, 7.7, 7.6, 7.5]]
		@alimento1_1 = Alimento2.new("Compota de manzana",14.1, 0.0, 19.5,[6.7, 6.5, 6.8, 6.9, 7.0, 7.1, 6.9, 6.9, 6.9, 6.7, 6.9, 7.3, 7.0, 7.0, 7.2, 7.1, 6.8, 7.2, 7.3, 7.0, 6.8, 6.7, 6.8, 6.7, 6.9])
		@alimento1_2 = Alimento2.new("Yogurt",14.1, 0.0, 19.5,[6.1, 6.6, 6.3, 6.3, 6.1, 6.9, 6.8, 6.5, 6.4, 6.9, 6.8, 6.5, 6.3, 6.2, 6.7, 6.2, 5.9, 5.8, 5.8, 5.8, 5.8, 5.8, 5.9, 6.2, 6.4])
		@alimento1_3 = Alimento2.new("Chocolate",3.8, 4.9, 3.8,[6.5, 6.5, 6.7, 6.5, 6.5, 6.8, 6.7, 6.2, 6.5, 7.2, 6.9, 7.0, 6.3, 6.2, 6.1, 5.9, 5.8, 6.1, 6.7, 6.7, 6.6, 6.7, 6.9, 7.2, 7.1])
		@alimento2_1 = Alimento2.new("Compota de manzana", 21.1, 0.0, 3.1,[4.6, 4.8, 5.3, 5.6, 6.1, 6.5, 6.6, 7.0, 7.0, 6.8, 6.4, 6.3, 6.1, 6.1, 6.2, 6.0, 6.1, 6.1, 6.2, 6.3, 6.4, 6.1, 6.1, 5.7, 5.9])
		@alimento2_2 = Alimento2.new("Yogurt", 17.7, 0.0, 0.4,[4.9, 4.9, 5.2, 5.8, 6.5, 7.0, 7.2, 7.3, 7.3, 6.6, 6.2, 6.1, 6.0, 6.1, 5.9, 5.9, 5.9, 5.9, 5.8, 5.8, 5.5, 5.5, 5.6, 5.9, 5.9])
		@alimento2_3 = Alimento2.new("Chocolate", 21.5, 0.0, 15.5,[4.6, 4.6, 4.7, 4.7, 4.8, 4.7, 4.8, 4.8, 4.6, 4.4, 4.7, 4.7, 4.8, 4.7, 5.2, 5.9, 5.9, 5.7, 5.4, 5.3, 5.1, 4.8, 4.8, 4.9, 5.9])
		@individuos = [[@alimento1_1, @alimento1_2, @alimento1_3],[@alimento2_1, @alimento2_2, @alimento2_3]]
	end

	describe "Existencia de los métodos de Alimento" do
   		it "#Se realiza correctamente el aibc_alim" do
   			expect(@individuos[0][0].aibc_alim).to eq(28.249999999999993)
  		end 
   		it "#Se realiza correctamente el aibc_glucosa" do
   			expect(@individuos[0][0].aibc_glucosa(@glucosa[0])).to eq(251.5)
  		end 
   		it "#Se realiza correctamente el indice glucemico de Compota de manzana" do
			div = (0...@individuos.length).map{|i| @individuos[i][0].aibc_alim/@individuos[i][0].aibc_glucosa(@glucosa[i])}
			mult = (0...div.length).map{|i| div[i]*100}
			div2 = (0...mult.length).map{|i| mult[i]/2}
			manzana = div2.reduce('+')
			expect(manzana).to eq(52.438610876891694)	
  		end
   		it "#Se realiza correctamente el indice glucemico de Yogurt" do
			div = (0...@individuos.length).map{|i| @individuos[i][1].aibc_alim/@individuos[i][1].aibc_glucosa(@glucosa[i])}
			mult = (0...div.length).map{|i| div[i]*100}
			div2 = (0...mult.length).map{|i| mult[i]/2}
			yogurt = div2.reduce('+')
			expect(yogurt).to eq(39.46044872141986)	
  		end
   		it "#Se realiza correctamente el indice glucemico de Chocolate" do
			div = (0...@individuos.length).map{|i| @individuos[i][2].aibc_alim/@individuos[i][2].aibc_glucosa(@glucosa[i])}
			mult = (0...div.length).map{|i| div[i]*100}
			div2 = (0...mult.length).map{|i| mult[i]/2}
			chocolate = div2.reduce('+')
			expect(chocolate).to eq(12.805398478132512)	
  		end
	
	end
end
