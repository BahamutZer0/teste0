class Comando 
   def mostrar 
      raise "N pode chamar"
   end
end 

class Zerar < Comando 
   def mostrar 
      puts "Comando Zerar"
   end
end 

class Incrementar < Comando 
   def initialize(valor)
      @valor = valor
   end
   
   def get_valor
      @valor
   end
   
   def mostrar 
      puts "Comando Incrementar: #{@valor}"
   end
end 

class Decrementar < Comando 
   def initialize(valor)
      @valor = valor
   end
   
   def get_valor
      @valor
   end
   
   def mostrar 
      puts "Comando Decrementar: #{@valor}"
   end
end 

