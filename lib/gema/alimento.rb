class Alimento

	attr_accessor :name 
  	def initialize(name)
    		@name = name
 	end
	def to_s
		title= "#{@name} "
	end
end

