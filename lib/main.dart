import 'package:flutter/material.dart';
import 'package:navegacao/pages/admin.dart';
import 'package:navegacao/pages/cadastro_produto.dart';
import 'package:navegacao/pages/cliente.dart';
import 'package:navegacao/pages/login.dart';
import 'package:navegacao/pages/cadastro_cliente.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/admin': (context) => Admin(),
        '/cliente': (context) => Cliente(),
        '/cadastrocliente': (context) => CadastroCliente(),
        '/cadastroproduto': (context) => CadastroProduto(),
      },
    );
  }
}
