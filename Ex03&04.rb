class Processador
    def initialize
        @comandos = []
    end
    
    def inserir_comando(comando)
        if comando.instance_of? Comando 
            @comandos << comando
        else
            puts "Erro"
        end
    end
    
    def mostrar_todos
        for comando in @comandos
            comando.mostrar
        end
    end
    
    # x eh a memoria
    def executar(x)
        for comando in @comandos
            case comando  
                when Zerar
                   x = 0
                when Incrementar
                   x = x + comando.get_valor
                when Decrementar
                   x = x - comando.get_valor
            end
        end
        puts "O valor eh: #{x}"
    end
end 


# ----------- EXERCICIO 04 -----------

p = Processador.new 
c1 = Incrementar.new(7)
c2 = Decrementar.new(3)
c3 = Zerar.new
c4 = Incrementar.new(5)
c5 = Decrementar.new(2)
p.inserir_comando(c1)
p.inserir_comando(c2)
p.inserir_comando(c3)
p.inserir_comando(c4)
p.inserir_comando(c5)
p.executar(0)
