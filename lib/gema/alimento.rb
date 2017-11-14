#Clase Alimento
class Alimento
#Include Comparable
include Comparable
	#Nombre del alimento, proteinas del alimento, glucidos del alimento y lipidos del alimento
	attr_accessor :name, :proteinas, :glucidos, :lipidos 
	#Constructor de Alimento 
  	def initialize(name, proteinas, glucidos, lipidos)
    		@name = name
    		@proteinas = proteinas
    		@glucidos = glucidos
    		@lipidos = lipidos
 	end
	#Método necesario para poder utilizar el módulo comparable
  	def <=>(another)
    		get_valor_energetico <=> another.get_valor_energetico
  	end
	#Método para imprimir Alimento
	def to_s
		title= "\nAlimento:\n\n"
		title+="#{@name}\t#{@proteinas}g\t#{@glucidos}g\t#{@lipidos}g"
	end 
	#Método para obtener el nombre del alimento
	def get_name   
     
		@name    
	end  
	#Método para obtener las proteinas del alimento
	def get_proteinas   
     
		@proteinas    
	end
	#Método para obtener los glucidos del alimento
	def get_glucidos 
      
		@glucidos   
	end    
	#Método para obtener las grasas del alimento
	def get_grasas      
  
		@lipidos    
	end  
	#Método para obtener el valor energetico del alimento
	def get_valor_energetico   
	
		(@proteinas*4)+(@glucidos*4)+(@lipidos*9)   
 
	end
end
	#Clase Alimento_grupo que recibe herencia de la clase Alimento
	class Alimento_grupo < Alimento
		#Grupo del alimento
		attr_accessor :grupo
		#Constructor 
		def initialize(alimento, grupo)
			super(alimento.name, alimento.proteinas, alimento.glucidos, alimento.lipidos)
			@grupo= grupo

		end
		#Método para imprimir Alimento_grupo
		def to_s

			title = "\n#{@name}" + super.to_s 
		end  
	end
