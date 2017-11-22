#Clase Alimento
class Alimento2
#Include Comparable
include Comparable
	#Nombre del alimento, proteinas del alimento, glucidos del alimento, lipidos del alimento y glucosa del alimento
	attr_accessor :name, :proteinas, :glucidos, :lipidos, :g_alim 
	#Constructor de Alimento 
  	def initialize(name, proteinas, glucidos, lipidos, g_alim)
    		@name = name
    		@proteinas = proteinas
    		@glucidos = glucidos
    		@lipidos = lipidos
		@g_alim = g_alim
 	end
	#Método necesario para poder utilizar el módulo comparable
  	def <=>(another)
    		get_valor_energetico <=> another.get_valor_energetico
  	end
	#Método para imprimir Alimento
	def to_s
		title= "\nAlimento:\n\n"
		title+="#{@name}\t#{@proteinas}g\t#{@glucidos}g\t#{@lipidos}g"
		for i in 0..@g_alim.size-1            
			title +="#{@g_alim[i]} "
		end
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
	#Método para el area incremental bajo la curva de los alimentos
	def aibc_alim
		glucosa = @g_alim
		aux1 = (1..glucosa.length-1).map{|i|(glucosa[i] - glucosa[0]) + (glucosa[i-1] - glucosa[0])}
		aux2 = (1..aux1.length-1).map{|i| aux1[i]/2}
		aux3 = (1..aux2.length-1).map{|i| aux2[i]*5}
		final =aux3.reduce('+')
	end
end
	#Clase Alimento_grupo que recibe herencia de la clase Alimento
	class Alimento_grupo < Alimento2
		#Grupo del alimento
		attr_accessor :grupo
		#Constructor 
		def initialize(alimento, grupo)
			super(alimento.name, alimento.proteinas, alimento.glucidos, alimento.lipidos, alimento.g_alim)
			@grupo= grupo

		end
		#Método para imprimir Alimento_grupo
		def to_s

			title = "\n#{@name}" + super.to_s 
		end  
	end
