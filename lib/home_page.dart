import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var num1 = 0.0, num2 = 0.0, result = 0.0;

  final TextEditingController c1 = TextEditingController(text: '0');
  final TextEditingController c2 = TextEditingController(text: '0');

  onAddition() {
    setState(() {
      num1 = double.parse(c1.text);
      num2 = double.parse(c2.text);
      result = num1 + num2;
    });
  }

  onSub() {
    setState(() {
      num1 = double.parse(c1.text);
      num2 = double.parse(c2.text);
      result = num1 - num2;
    });
  }

  onMul() {
    setState(() {
      num1 = double.parse(c1.text);
      num2 = double.parse(c2.text);
      result = num1 * num2;
    });
  }

  onDiv() {
    setState(() {
      num1 = double.parse(c1.text);
      num2 = double.parse(c2.text);
      result = num1 / num2;
    });
  }

  onClear() {
    setState(() {
      c1.text = '0';
      c2.text = '0';
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.black87,
                  child: Center(
                    child: Text(
                      'Output : $result',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                TextField(
                  controller: c1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Number 1',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: c2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Number 2',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: Colors.pinkAccent,
                      onPressed: onAddition,
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    RaisedButton(
                      color: Colors.pinkAccent,
                      onPressed: onSub,
                      child: Text(
                        '-',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: Colors.pinkAccent,
                      onPressed: onMul,
                      child: Text(
                        '*',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    RaisedButton(
                      color: Colors.pinkAccent,
                      onPressed: onDiv,
                      child: Text(
                        '/',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: Colors.pinkAccent,
                      onPressed: onClear,
                      child: Text(
                        'Clear',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
