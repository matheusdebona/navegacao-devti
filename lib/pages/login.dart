import 'package:flutter/material.dart';
import 'package:navegacao/pages/util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    fazLogin() {
      if (txtEmail.text == 'admin' && txtSenha.text == '123') {
        Navigator.of(context).pushReplacementNamed('/admin');
        print('Entrou ${txtEmail.text} - ${txtSenha.text}');
      } else {
        if (txtEmail.text == 'cliente' && txtSenha.text == '123') {
          Navigator.of(context).pushReplacementNamed('/cliente');
          print('Entrou ${txtEmail.text} - ${txtSenha.text}');
        } else {
          print(
              'Acesso negado ${txtEmail.text} - ${txtSenha.text} - Não são válidos');
        }
      }
    }

    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Util().criaTextField(
                'Email', false, TextInputType.emailAddress, txtEmail),
            Util().criaTextField('Senha', true, TextInputType.number, txtSenha),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Util().criaBotao('Entrar', fazLogin, 50, double.infinity),
            )
          ],
        ),
      ),
    );
  }
}
