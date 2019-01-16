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
  
  it "Deveria marcar 0x30 quando jogador B faz dois pontos" do
    placar = Tennis.new
    placar.computa_jogada("JogadorB")
    placar.computa_jogada("JogadorB")
    expect(placar.qtd_pontos_jogador_a).to be(0)
    expect(placar.qtd_pontos_jogador_b).to be(30)
  end
  
  it "Deveria marcar 0x40 quando jogador B faz tres pontos" do
    placar = Tennis.new
    placar.computa_jogada("JogadorB")
    placar.computa_jogada("JogadorB")
    placar.computa_jogada("JogadorB")
    expect(placar.qtd_pontos_jogador_a).to be(0)
    expect(placar.qtd_pontos_jogador_b).to be(40)
  end
  
  it "Deveria marcar 40x0 quando jogador A faz tres pontos" do
    placar = Tennis.new
    placar.computa_jogada("JogadorA")
    placar.computa_jogada("JogadorA")
    placar.computa_jogada("JogadorA")
    expect(placar.qtd_pontos_jogador_a).to be(40)
    expect(placar.qtd_pontos_jogador_b).to be(0)
  end
  
  it "Deveria marcar 30x15 quando jogador A faz 2 pontos e B faz 1" do
    placar = Tennis.new
    placar.computa_jogada("JogadorA")
    placar.computa_jogada("JogadorA")
    placar.computa_jogada("JogadorB")
    expect(placar.qtd_pontos_jogador_a).to be(30)
    expect(placar.qtd_pontos_jogador_b).to be(15)
  end

  it "Deveria ganhar quando jogador A faz 4 pontos" do
    placar = Tennis.new
    placar.computa_jogada("JogadorA")
    placar.computa_jogada("JogadorA")
    placar.computa_jogada("JogadorA")
    placar.computa_jogada("JogadorA")
    expect(placar.resultado).to eq("JogadorA ganhou")
  end  

  it "Deveria ganhar quando jogador B faz 4 pontos" do
    placar = Tennis.new
    placar.computa_jogada("JogadorB")
    placar.computa_jogada("JogadorB")
    placar.computa_jogada("JogadorB")
    placar.computa_jogada("JogadorB")
    expect(placar.resultado).to eq("JogadorB ganhou")
  end  
  
end