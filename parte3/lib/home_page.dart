import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  Widget space = const SizedBox(height: 20);

  Future<void> navigateTo(BuildContext context, String routeName) {
    return Navigator.of(context).pushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => navigateTo(context, '/setState'),
              child: const Text("setState"),
            ),
            space,
            ElevatedButton(
              onPressed: () {},
              child: const Text("ChangeNotifier"),
            ),
            space,
            ElevatedButton(
              onPressed: () {},
              child: const Text("ValueNotifier"),
            ),
            space,
            ElevatedButton(
              onPressed: () {},
              child: const Text("Block Patterner"),
            ),
            space
          ],
        ),
      ),
    );
  }
}
