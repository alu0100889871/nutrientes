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
end

