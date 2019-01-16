class Tennis
  attr_accessor :qtd_pontos_jogador_a
  attr_accessor :qtd_pontos_jogador_b
  
  def initialize
    @qtd_pontos_jogador_a = 0
    @qtd_pontos_jogador_b = 0
  end
  
  
  def computa_jogada jogador
    if(jogador == "JogadorA")
      @qtd_pontos_jogador_a += 15
    end
    if(jogador == "JogadorB")
      if(@qtd_pontos_jogador_b == 30)
        @qtd_pontos_jogador_b += 10
      else
        @qtd_pontos_jogador_b += 15
      end
    end
  end
  
end