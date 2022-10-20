import 'package:flutter/material.dart';

class Util {
  criaAppBar(titulo, double tamanho, cor) {
    return AppBar(
      title: criaTexto(
        titulo,
        tamanho,
        cor,
      ),
      centerTitle: true,
    );
  }

  criaTexto(conteudo, double tamanho, cor,
      [bool negrito = false, bool start = true, maximoLinhas]) {
    return Text(
      conteudo,
      style: TextStyle(
          fontSize: tamanho,
          color: cor,
          fontWeight: negrito ? FontWeight.bold : FontWeight.normal),
      textAlign: TextAlign.start,
      maxLines: maximoLinhas,
      overflow: TextOverflow.ellipsis,
    );
  }

  criaTextField(titulo, senha, tipoTeclado, controller) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: controller,
        keyboardType: tipoTeclado,
        obscureText: senha,
        decoration: InputDecoration(
          labelText: titulo,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  criaBotao(rotulo, funcao, double altura, double largura) {
    return SizedBox(
      height: altura,
      width: largura,
      child: ElevatedButton(
        onPressed: funcao,
        child: criaTexto(rotulo, 25, Colors.white),
      ),
    );
  }

  criaProduto(nome, imagem, double valor, descricao) {
    return Container(
      height: 200,
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: double.infinity,
                child: Card(
                  elevation: 5,
                  child: Image.asset('$imagem', fit: BoxFit.cover),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: criaTexto('$nome', 20, Colors.black, true),
                    ),
                    Expanded(
                      flex: 1,
                      child: criaTexto(
                          'Valor: R\$ $valor', 20, Colors.black, true, true, 1),
                    ),
                    Expanded(
                      flex: 3,
                      child: criaTexto('Descrição: $descricao', 18,
                          Colors.black, false, true, 4),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
