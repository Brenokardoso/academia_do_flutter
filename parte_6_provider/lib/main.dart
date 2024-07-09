import 'package:flutter/material.dart';
import 'package:parte_6_provider/change_notifer/change_notfier_controller.dart';
import 'package:parte_6_provider/change_notifer/change_notifier_page.dart';
import 'package:parte_6_provider/provider/provider_page.dart';
import 'package:parte_6_provider/provider/user_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) {
            return UserModel(
              name: 'Breno Cardoso',
              imgAvatarUrl: "https://i.redd.it/4kbg7ionk63a1.jpg",
              bithDate: "10/10/2024",
            );
          },
        ),
        ChangeNotifierProvider(
          create: (context) => ProviderNotifyController(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Provider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
                color: Colors.orange,
                fontSize: 25,
                fontWeight: FontWeight.bold),
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.orange),
          ),
        ),
        routes: {
          "/provider": (context) => const ProviderPage(),
          "/change": (context) => const ChangeNotifierPage()
        },
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed("/provider"),
                      child: const Text("Provider"),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed("/change"),
                      child: const Text("ChangeNotifier"),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
