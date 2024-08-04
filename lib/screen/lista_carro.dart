import 'package:flutter/material.dart';
import '../components/labels.dart';
import '../components/textfields.dart';
import '../model/carro.dart';

class ListaCarro extends StatefulWidget {
  const ListaCarro({super.key});

  @override
  ListaCarroState createState() => ListaCarroState();
}

class ListaCarroState extends State<ListaCarro> {
  final List<Carro> carros = [];

  //Controllers
  final TextEditingController _singController = TextEditingController();
  final TextEditingController _colorController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppLabels.appName),
      ),

//LIST
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: carros.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${AppLabels.car} ${index+1}:'),
                  subtitle: Text(carros[index].toString()),
                );
              },
            ),
          ),

//
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 2.0,
              horizontal: 10.0
            ),
            child: createTextField(
              AppLabels.sing,
              _singController,
              TextInputType.text
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 2.0,
              horizontal: 10.0
            ),
            child: createTextField(
              AppLabels.color,
              _colorController,
              TextInputType.text
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 2.0,
              horizontal: 10.0
            ),
            child: createTextField(
              AppLabels.year,
              _yearController,
              TextInputType.number
            ),
          ),


//BUTTON
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  String placa = _singController.text;
                  String cor = _colorController.text;
                  int ano = int.tryParse(_yearController.text) ?? 0;

                  // Verifica se todos os campos estao corretos e add carro, e limpa os inputs
                  if (placa.isNotEmpty && cor.isNotEmpty && ano != 0) {
                    carros.add(Carro(placa: placa, cor: cor, ano: ano));
                    _singController.clear();
                    _colorController.clear();
                    _yearController.clear();
                  }
                  // Exibe um dialogo de erro caso campos icorreto
                  else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(AppLabels.error),
                          content: const Text(AppLabels.errorMsg),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(AppLabels.confirm),
                            ),
                          ],
                        );
                      },
                    );
                  }
                });
              },
              child: const Text(
                AppLabels.addCar,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
