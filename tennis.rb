class Tennis
  attr_accessor :resultado
  
  PONTUACAO = [ 0, 15, 30, 40 ]
   
  def initialize
    @pontos_jogador = { a: 0, b: 0}
  end
  
  ["a","b"].each do |arg|
    define_method("qtd_pontos_jogador_#{arg}") do 
      PONTUACAO[@pontos_jogador[arg.to_sym]]
    end
  end
  
  def computa_jogada jogador
    marca_ponto = {
      "JogadorA" => -> () { @pontos_jogador[:a] += 1 },
      "JogadorB" => -> () { @pontos_jogador[:b] += 1 }
    }[jogador]
    
    @resultado = "#{jogador} ganhou" if marca_ponto[] > 3
    
  end

end