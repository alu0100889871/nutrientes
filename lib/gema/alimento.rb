class Alimento

	attr_accessor :name, :proteinas, :glucidos, :lipidos  
  	def initialize(name, proteinas, glucidos, lipidos)
    		@name = name
    		@proteinas = proteinas
    		@glucidos = glucidos
    		@lipidos = lipidos
 	end

	def to_s
		title= "\nAlimento:\n\n"
		title+="#{@name}\t#{@proteinas}g\t#{@glucidos}g\t#{@lipidos}g"
	end 

	def get_name   
     
		@name    
	end  

	def get_proteinas   
     
		@proteinas    
	end

	def get_glucidos 
      
		@glucidos   
	end    

	def get_grasas      
  
		@lipidos    
	end  

	def get_valor_energetico   
	
		(@proteinas*4)+(@glucidos*4)+(@lipidos*9)   
 
	end
end
	class Alimento_grupo < Alimento

		attr_accessor :grupo
		def initialize(alimento, grupo)
			super(alimento.name, alimento.proteinas, alimento.glucidos, alimento.lipidos)
			@grupo= grupo

		end

		def to_s

			title = "\n#{@name}" + super.to_s 
		end  
	end
