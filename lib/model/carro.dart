class Carro {
  String placa;
  String cor;
  int ano;

  // Construtor para inicializar os atributos da classe Carro
  Carro({required this.placa, required this.cor, required this.ano});

  @override
  String toString() {
    return 'Placa: $placa  |  Cor: $cor  |  Ano: $ano';
  }
}
