import 'package:flutter/material.dart';
import 'package:navegacao/pages/util.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  chamaCadastroCliente() {
    Navigator.of(context).pushNamed('/cadastrocliente');
  }

  chamaCadastroProduto() {
    Navigator.of(context).pushNamed('/cadastroproduto');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util().criaAppBar('Área de Administração', 25, Colors.white),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Expanded(
                flex: 1,
                child: Util().criaBotao('Cadastrar Produtos',
                    chamaCadastroProduto, 50, double.infinity)),
            const SizedBox(height: 100),
            Expanded(
                flex: 1,
                child: Util().criaBotao('Cadastrar Clientes',
                    chamaCadastroCliente, 50, double.infinity)),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
