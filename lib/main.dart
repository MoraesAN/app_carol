import 'package:flutter/material.dart';

TextEditingController _controllerUsuario = TextEditingController();
TextEditingController _controllerSenha = TextEditingController();

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tela de Login"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Image.asset("imagens/InProgress.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 80, left: 80),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Nome de Usuário",
                    ),
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                    ),
                    controller: _controllerUsuario,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 80, left: 80),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Senha",
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                    ),
                    controller: _controllerSenha,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      print(
                          "Usuario ${_controllerUsuario.text} e senha ${_controllerSenha.text}");
                    },
                    child: const Text('Disabled'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
