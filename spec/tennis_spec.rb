require "rspec"
require "./tennis"

describe "Tennis" do
  
  it "deveria marcar 15x0 quando jogador A faz um ponto" do
    placar = Tennis.new
    placar.computa_jogada("JogadorA")
    expect(placar.qtd_pontos_jogador_a).to be(15)
    expect(placar.qtd_pontos_jogador_b).to be(0)
  end
  
  it "deveria marcar 15x15 quando jogador A faz um ponto e o jogadorB tambem" do
    placar = Tennis.new
    placar.computa_jogada("JogadorA")

    placar.computa_jogada("JogadorB")
    expect(placar.qtd_pontos_jogador_a).to be(15)
    expect(placar.qtd_pontos_jogador_b).to be(15)
  end
  
  
  it "deveria marcar 30x0 quando jogador A faz dois pontos" do
    placar = Tennis.new
    placar.computa_jogada("JogadorA")
    placar.computa_jogada("JogadorA")

    expect(placar.qtd_pontos_jogador_a).to be(30)
    expect(placar.qtd_pontos_jogador_b).to be(0)
  end
  
  
  
end