import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
      ),
      body: Scaffold(
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int mandarina) {
            return Text("Hola");
          },
        ),
      ),
    );
  }
}
