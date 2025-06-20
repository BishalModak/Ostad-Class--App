import 'package:flutter/material.dart';

import '../../widgets/buildButton.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = '0';
  String _input = '0';
  String _ope = '0';
  double num1 = 0;
  double num2 = 0;

  void buttonPress(String value) {
    print(value);
    setState(() {
      if (value == 'C') {
        _output = '0';
        _input = '0';
        _ope = '';
        num1 = 0;
        num2 = 0;
      } else if (value == '=') {
        if (_ope.isNotEmpty) {
          num2 = double.tryParse(_input) ?? 0;
          double result = 0;

          if (_ope == '+') {
            result = num1 + num2;
          } else if (_ope == '-') {
            result = num1 - num2;
          } else if (_ope == 'x') {
            result = num1 * num2;
          } else if (_ope == '÷') {
            if (num2 != 0) {
              result = num1 / num2;
            } else {
              _output = 'Syntax Error';
              return;
            }
          }
          _output =
              result % 1 == 0
                  ? result.toInt().toString()
                  : result
                      .toStringAsFixed(6)
                      .replaceFirst(RegExp(r'0+$'), '')
                      .replaceFirst(RegExp(r'\.$'), '');

          _input = _output;
          _ope = '';
          num1 = 0;
          num2 = 0;
        }
      } else if (['+', '-', 'x', '÷'].contains(value)) {
        num1 = double.tryParse(_input) ?? 0;
        _ope = value;
        _input = '';
      } else {
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Calculator'), backgroundColor: Colors.orange),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(24),
              child: Text(
                _output,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            children: [
              buildButton(onClick: () => buttonPress('7'), text: '7'),
              buildButton(onClick: () => buttonPress('8'), text: '8'),
              buildButton(onClick: () => buttonPress('9'), text: '9'),
              buildButton(
                onClick: () => buttonPress('÷'),
                text: '÷',
                color: Colors.orange,
              ),
            ],
          ),

          Row(
            children: [
              buildButton(onClick: () => buttonPress('4'), text: '4'),
              buildButton(onClick: () => buttonPress('5'), text: '5'),
              buildButton(onClick: () => buttonPress('6'), text: '6'),
              buildButton(
                onClick: () => buttonPress('x'),
                text: 'x',
                color: Colors.orange,
              ),
            ],
          ),

          Row(
            children: [
              buildButton(onClick: () => buttonPress('1'), text: '1'),
              buildButton(onClick: () => buttonPress('2'), text: '2'),
              buildButton(onClick: () => buttonPress('3'), text: '3'),
              buildButton(
                onClick: () => buttonPress('-'),
                text: '-',
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            children: [
              buildButton(
                onClick: () => buttonPress('C'),
                text: 'C',
                color: Colors.red,
              ),
              buildButton(onClick: () => buttonPress('0'), text: '0'),
              buildButton(
                onClick: () => buttonPress('='),
                text: '=',
                color: Colors.green,
              ),
              buildButton(
                onClick: () => buttonPress('+'),
                text: '+',
                color: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
