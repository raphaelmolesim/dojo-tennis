class Tennis
  attr_accessor :qtd_pontos_jogador_a
  attr_accessor :qtd_pontos_jogador_b
  
  def initialize
    @qtd_pontos_jogador_a = 0
    @qtd_pontos_jogador_b = 0
  end
  
  def computa_pontos jogador, pontos 
    if(jogador == "JogadorA")
      @qtd_pontos_jogador_a += pontos
    else
      @qtd_pontos_jogador_b += pontos
    end
  end
  
  def computa_jogada jogador
    if(jogador == "JogadorA")
      if(@qtd_pontos_jogador_a == 30)
        computa_pontos(jogador, 10)
      else
        computa_pontos(jogador, 15)
      end
    end
    if(jogador == "JogadorB")
      if(@qtd_pontos_jogador_b == 30)
        computa_pontos(jogador, 10)
      else
        computa_pontos(jogador, 15)
      end
    end
  end
  
end