import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(SegundaActivity());

class SegundaActivity extends StatefulWidget {
  @override
  _SegundaActivityState createState() => _SegundaActivityState();
}

class _SegundaActivityState extends State<SegundaActivity> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Funcionamento do botão voltar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Clique no botão voltar!',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Você tem certeza?'),
        content: new Text('Você irá voltar para a tela anterior'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('Não'),
          ),
          new FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: new Text('Sim'),
          ),
        ],
      ),
    ) ?? false;
  }
}