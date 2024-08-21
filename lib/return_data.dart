import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReturnDataScreen extends StatelessWidget {
  final _data = <String, String>{};

  ReturnDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Return data screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                onChanged: (value) {
                  _data['name'] = value;
                },
                decoration: const InputDecoration(
                  hintText: "Nama",
                  labelText: "Masukan nama Anda",
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                onChanged: (value) {
                  _data['address'] = value;
                },
                decoration: const InputDecoration(
                  hintText: "Alamat",
                  labelText: "Masukan alamat Anda",
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                onChanged: (value) {
                  _data['age'] = value;
                },
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  hintText: "Umur",
                  labelText: "Masukan umur Anda",
                ),
              ),
            ),
            const SizedBox(height: 10), // Margin 10 pixels vertikal
            ElevatedButton(
              onPressed: () {
                if (_data.isEmpty) {
                  Navigator.pop(context, null);
                } else {
                  Navigator.pop(context, _data);
                }
              },
              child: const Text("simpan sammm"),
            ),
          ],
        ),
      ),
    );
  }
}