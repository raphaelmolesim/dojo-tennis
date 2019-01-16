class Tennis
  attr_accessor :qtd_pontos_jogador_a
  attr_accessor :qtd_pontos_jogador_b
  
  def initialize
    @qtd_pontos_jogador_a = 0
    @qtd_pontos_jogador_b = 0
  end
  
  def computa_pontos jogador
    if(jogador == "JogadorA")
      if(@qtd_pontos_jogador_a == 30)
        @qtd_pontos_jogador_a += 10
      else
        @qtd_pontos_jogador_a += 15
      end
    else
      if(@qtd_pontos_jogador_b == 30)
        @qtd_pontos_jogador_b += 10
      else
        @qtd_pontos_jogador_b += 15
      end
    end
  end
  
  def computa_jogada jogador
    computa_pontos jogador
  end
  
end