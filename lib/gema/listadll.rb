#Estructura del nodo (Nodo genérico de la Listadll)
Nodedll = Struct.new(:value, :prev, :next)
#Clase Lista doblemente enlazada
class Listadll
#Include Enumerable
include Enumerable
#La cabecera de la Listadll
attr_reader :head
#La cola de la Listadll
attr_reader :tail
#Constructor 
 	def initialize
    		@head = nil
		@tail = nil
	end
#Método necesario para que el módulo Enumerable se pueda utilizar(el módulo Enumerable define iteradores útiles que se implementan en base a un iterador each)     	
    	 def each
	node=@tail
	while node != nil
		yield node.value
		node=node.next
	end
    end
#Método que inserta por delante un valor o un array de valores en la Listadll 
    	def pushfront (valor)
		if(valor.instance_of? Array )
		if(@tail==nil)
			@tail=Nodedll.new(valor[0],nil,nil)
			@head = @tail
			valor.shift()
		end
			for i in valor 
				aux=@head
	    			@head=Nodedll.new(i,aux,nil)
				aux.next =@head

			end
		else
		if(@tail==nil)
			@tail=Nodedll.new(valor,nil,nil)
			@head = @tail
		else
			 aux = @head            
			 @head = Nodo.new(valor,aux,nil)            
			 aux.next = @head 

		end
		end
		@head.value
		
	end 

#Método que inserta por detrás un valor o un array de valores en la Listadll
    	def pushback (valor)
		if(@tail==nil)
			@tail=Nodedll.new(valor[0],nil,nil)
			@tail=@head
		end
		if(valor.instance_of? Array )
			for i in valor
				aux=@tail
	    			@tail=Nodedll.new(i,aux,@head)
				aux.prev=@tail

			end
		else
		if(@tail==nil)
			@tail=Nodedll.new(valor,nil,nil)
			@tail=@head
		end
			@tail=Nodedll.new(valor,nil,@head)
		end
		@tail.value

	end
#Método que saca por delante un valor de la Listadll 
    	def popfront
		if(@head!=nil)	
			other = @head
			@head = @head.prev
		if(@head!=nil)	
			@head.next=nil
			other.prev=nil	
		else @tail = nil
			
        	end
		end
		return other.value
    	end
#Método que saca por detrás un valor de la Listadll 
    	def popback 
		if(@tail!=nil)	
			other = @tail
			@tail = @tail.next
		if(@tail!=nil)	
			@tail.prev=nil
			other.prev=nil	
		else @head = nil
			
        	end
		end
		return other.value
    	end
#Método que imprime la Listadll
    	def to_s
        	other = @tail
         	total=""
        	while(other!=nil)
          		total+= "#{other.value}\t"
          		other = other.next
        	end
         	total += "\n" 
	end 
#Método que comprueba si la Listadll está vacía
     	def is_empty?
     		if(@head==nil)
        		return true
        	else return false
    
    		end
    	end
#Método que te devuelve la cabecera de la Listadll vacía     
    	def empty 
       		@head = nil
       		return @head
    
	end
end
