import 'package:flutter/material.dart';
import 'package:navegacao/pages/util.dart';

class Cliente extends StatefulWidget {
  const Cliente({super.key});

  @override
  State<Cliente> createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          height: double.infinity,
          width: 600,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: ListView(
            children: [
              Center(
                child: Util().criaTexto('Lista de Produtos', 30, Colors.white),
              ),
              const SizedBox(height: 15),
              Util().criaProduto('Banana', 'assets/images/bananas.jpg', 3.69,
                  'Banana branca, vendida por kg.'),
              Util().criaProduto('Leite Integral', 'assets/images/leite.png',
                  4.38, 'Leite Integral Aurora com 1 Litro.'),
              Util().criaProduto('Carne', 'assets/images/carne.jpg', 35.95,
                  'Carne de gado, contra-filé, vendido por kg.'),
              Util().criaProduto('Batata', 'assets/images/batatas.jpg', 6.63,
                  'Batata inglesa, vendida por kg.'),
              Util().criaProduto('Tomate', 'assets/images/tomate.jpg', 8.99,
                  'Tomate, vendido por kg.'),
              Util().criaProduto('Banana', 'assets/images/bananas.png', 6.61,
                  'Banana caturra, vendida por kg.'),
              Util().criaProduto('Leite Integral', 'assets/images/leite.png',
                  6.60, 'Leite Desnatado Aurora com 1 Litro.'),
              Util().criaProduto('Carne', 'assets/images/meat.png', 6.62,
                  'Bife vendido por kg.'),
              Util().criaProduto('Chips', 'assets/images/chips.png', 6.63,
                  'Batatinhas fritas.'),
              Util().criaProduto('Batata', 'assets/images/potato.png', 6.64,
                  'Acabou as idéias de descrição, só precisar ser grande para testar o overflow do texto da descrição, vai precisar ser um pouco maior.'),
            ],
          ),
        ),
      ),
    );
  }
}
