import 'package:flutter/material.dart';
import 'package:navegacao/pages/util.dart';

class CadastroProduto extends StatefulWidget {
  const CadastroProduto({super.key});

  @override
  State<CadastroProduto> createState() => _CadastroProdutoState();
}

class _CadastroProdutoState extends State<CadastroProduto> {
  TextEditingController nome = TextEditingController();
  TextEditingController valor = TextEditingController();
  TextEditingController descricao = TextEditingController();
  TextEditingController imagem = TextEditingController();

  @override
  Widget build(BuildContext context) {
    cadastraProduto() {}

    salvarFoto() {}

    return Scaffold(
      appBar: Util().criaAppBar('Cadastro de Produtos', 25, Colors.white),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => salvarFoto,
              child: const Icon(
                Icons.add_a_photo,
                size: 200,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50),
            Util().criaTextField('Nome', false, TextInputType.text, nome),
            Util().criaTextField('Valor', false, TextInputType.number, valor),
            Util().criaTextField(
                'Descrição', false, TextInputType.text, descricao),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Util().criaBotao(
                  'Cadastrar Produto', cadastraProduto, 80, double.infinity),
            ),
          ],
        ),
      ),
    );
  }
}
