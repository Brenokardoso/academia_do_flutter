import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    var value = ModalRoute.of(context)?.settings.arguments ?? '';
    print("valor do value $value");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Page'),
      ),
      body: const Center(
        child: Text('Center '),
      ),
    );
  }
}
