import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _result = '';

  void suma() {
    setState(() {
      double num1 = double.tryParse(_controller1.text) ?? 0;
      double num2 = double.tryParse(_controller2.text) ?? 0;
      double result = num1 + num2;
      _result = result.toString();
    });
  }

  void resta() {
    setState(() {
      double num1 = double.tryParse(_controller1.text) ?? 0;
      double num2 = double.tryParse(_controller2.text) ?? 0;
      double result = num1 - num2;
      _result = result.toString();
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Ingresa un numero',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _controller2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Ingresa otro numero',
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: suma,
                    child: Text('+'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green), // Color de fondo
                      minimumSize: MaterialStateProperty.all(Size(180, 40)), // Tamaño mínimo
                    ),
                  ),
                  ElevatedButton(
                    onPressed: resta,
                    child: Text('-'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green), // Color de fondo
                      minimumSize: MaterialStateProperty.all(Size(180, 40)), // Tamaño mínimo
                    ),
                  ),
                ],
              ),
              SizedBox(height: 82.0),
              Text(
                "El resultado es $_result",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
