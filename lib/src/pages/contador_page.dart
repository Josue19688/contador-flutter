import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 20);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Conteo', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

//creamos varios botones
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reiniciar),
        Expanded(child: SizedBox()), //para posicionar al inicio del row
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _desminuir),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _desminuir() {
    setState(() {
      if (_conteo > 0) {
        _conteo--;
      }
    });
  }

  void _reiniciar() {
    setState(() => _conteo = 0);
  }
}
