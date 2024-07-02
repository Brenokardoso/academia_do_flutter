import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material Banner"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilledButton(
              onPressed: () {
                var banner = MaterialBanner(
                    content: Text("action"),
                    onVisible: () => Text("teste"),
                    backgroundColor: Colors.orange,
                    actions: [
                      TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          },
                          child: const Text("X"))
                    ]);
                ScaffoldMessenger.of(context).showMaterialBanner(banner);
              },
              child: Text("Simple Banner"),
            ),
            FilledButton(
              onPressed: () {},
              child: Text("Diff Banner"),
            ),
          ],
        ),
      ),
    );
  }
}
