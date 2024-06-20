import 'package:flutter/material.dart';
import 'package:parte_2/pages/child_and_views/pages/singleChild.dart';
import 'package:parte_2/pages/home_page/home_page.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: ListView.separated(
          itemCount: 20,
          separatorBuilder: (context, index) =>
              Container(color: Colors.white, width: 100, height: 20),
          itemBuilder: (context, index) {
            print(index);
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: listContainers(index),
              ),
            );
          }),
    );
  }
}

List<Widget> listContainers(int indexView) {
  return List.generate(
    50,
    (index) => Container(
      width: 75,
      height: 75,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(
              30 + (index + indexView) * 5,
              30 + indexView * index,
              135 + indexView * index * 2,
              220,
            ),
            Color.fromARGB(
              30 + indexView * index * 10,
              208 + indexView * index,
              57 + indexView * index * 3,
              46,
            ),
            Color.fromARGB(
              30 + indexView * index * 15,
              224 + indexView * index,
              207 + indexView * index * 2,
              51,
            ),
          ],
        ),
      ),
    ),
  );
}
