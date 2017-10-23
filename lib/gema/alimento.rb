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

