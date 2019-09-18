import 'package:flutter/material.dart';
import 'SegundaActivity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Funcionamento do botão voltar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Funcionamento do botão voltar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Avançar para segunda tela:\n',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaActivity()),
                );
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text ('Clique aqui'),
            )
          ],
        ),
      ),
    );
  }
}