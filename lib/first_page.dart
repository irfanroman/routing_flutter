import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _myNumber = 0;

  void tambah() {
    setState(() {
      _myNumber += 1;
    });
  }

  void kurang() {
    setState(() {
      _myNumber -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HALO"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Kamu telah menekan tombol sebanyak"),
          Text(
            _myNumber.toString(),
            style: TextStyle(fontSize: 42),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  tambah();
                },
                label: Text("Tambah"),
                icon: Icon(Icons.add),
              ),
              Visibility(
                visible: _myNumber > 0,
                child: ElevatedButton.icon(
                  onPressed: () {
                    kurang();
                  },
                  label: Text("Kurang"),
                  icon: Icon(Icons.remove),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
