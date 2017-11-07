Nodedll = Struct.new(:value, :prev, :next)
class Listadll

	attr_accessor :head, :tail
 	def initialize
    		@head = nil
		@tail = nil
	end

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

    	def to_s
        	other = @tail
         	total=""
        	while(other!=nil)
          		total+= "#{other.value}\t"
          		other = other.next
        	end
         	total += "\n" 
	end 

     	def is_empty?
     		if(@head==nil)
        		return true
        	else return false
    
    		end
    	end

    	def empty 
       		@head = nil
       		return @head
    
	end
end
