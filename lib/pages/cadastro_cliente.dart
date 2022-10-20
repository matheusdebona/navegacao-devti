import 'package:flutter/material.dart';
import 'package:navegacao/pages/util.dart';

class CadastroCliente extends StatefulWidget {
  const CadastroCliente({super.key});

  @override
  State<CadastroCliente> createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
  TextEditingController nome = TextEditingController();
  TextEditingController cpf = TextEditingController();
  TextEditingController endereco = TextEditingController();
  TextEditingController senha = TextEditingController();
  TextEditingController foto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    cadastraCliente() {}

    salvarFoto() {}

    return Scaffold(
      appBar: Util().criaAppBar('Cadastro de Clientes', 25, Colors.white),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => salvarFoto,
              child: const Icon(
                Icons.add_a_photo_outlined,
                size: 200,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50),
            Util().criaTextField('Nome', false, TextInputType.text, nome),
            Util().criaTextField('CPF', false, TextInputType.number, cpf),
            Util()
                .criaTextField('Endereço', false, TextInputType.text, endereco),
            Util().criaTextField('Senha', true, TextInputType.text, senha),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Util().criaBotao(
                  'Cadastrar Cliente', cadastraCliente, 80, double.infinity),
            ),
          ],
        ),
      ),
    );
  }
}
