import 'package:flutter/material.dart';
import 'package:parte_2/pages/child_and_views/pages/listView.dart';
import 'package:parte_2/pages/child_and_views/pages/singleChild.dart';
import 'package:parte_2/pages/home_page/home_page.dart';

class ChildAndViews extends StatelessWidget {
  const ChildAndViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Child and Views"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  settings: const RouteSettings(
                    name: '/childAndViews/singlechildScroll',
                  ),
                  builder: (_) => const CustomSingleChild(),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.red;
                    }
                    return Colors.white;
                  },
                ),
              ),
              child: const Text(
                'Single Child',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  settings: const RouteSettings(
                    name: '/childAndViews/ListView',
                  ),
                  builder: (_) => const CustomListView(),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.green;
                    }
                    return Colors.white;
                  },
                ),
              ),
              child: const Text(
                'List View',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
