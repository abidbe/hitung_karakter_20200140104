import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Unit Testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _inputController = TextEditingController();
  int _jumlahKarakter = 0;

  void _updateJumlahKarakter() {
    setState(() {
      _jumlahKarakter = hitungJumlahKarakter(_inputController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Unit Testing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _inputController,
              decoration: InputDecoration(
                labelText: 'Masukkan teks',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateJumlahKarakter,
              child: Text('Hitung Jumlah Karakter'),
            ),
            SizedBox(height: 20),
            Text(
              'Jumlah Karakter: $_jumlahKarakter',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

int hitungJumlahKarakter(String teks) {
  return teks.length;
}
