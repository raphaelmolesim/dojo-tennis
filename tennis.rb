class Tennis
  attr_accessor :resultado
  
  PONTUACAO = [ 0, 15, 30, 40, 55 ]
  
  def initialize
    @pontos_jogador_a, @pontos_jogador_b = 0, 0
  end
  
  def qtd_pontos_jogador_a
    PONTUACAO[@pontos_jogador_a]
  end
  
  def qtd_pontos_jogador_b
    PONTUACAO[@pontos_jogador_b]
  end
  
  def computa_jogada jogador
    marca_ponto = {
      "JogadorA" => -> () { @pontos_jogador_a += 1 },
      "JogadorB" => -> () { @pontos_jogador_b += 1 }
    }[jogador]
    
    @resultado = "#{jogador} ganhou" if marca_ponto[] > 3
    
  end

end