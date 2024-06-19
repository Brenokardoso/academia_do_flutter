import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MediaQueryHome extends StatelessWidget {
  const MediaQueryHome({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final statusBar = MediaQuery.of(context).padding.top;
    final screamheightSize =
        MediaQuery.of(context).size.height - statusBar - kToolbarHeight;
    final screamWidthSize = MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.horizontal;
        
    print("Valor da orientação : ${mediaQuery.orientation}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query Page"),
      ),
      body: Column(
        children: [
          Container(
            width: screamWidthSize,
            height: screamheightSize / 4,
            color: Colors.orangeAccent,
          ),
          Container(
            width: screamWidthSize,
            height: screamheightSize / 4,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
