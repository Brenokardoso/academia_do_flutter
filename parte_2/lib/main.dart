import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:parte_2/pages/container/container_page.dart';
import 'package:parte_2/pages/home_page/home_page.dart';
import 'package:parte_2/pages/layoutBuilder/layout_builder_page.dart';
import 'package:parte_2/pages/media_query/media_query.dart';
import 'package:parte_2/pages/rows_and_columns/rows_and_coluns_page.dart';
import 'package:device_preview/device_preview.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       builder: (BuildContext context) => const MyApp(),
//       enabled: !kReleaseMode,
//     ),
//   );
// }

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // locale: DevicePreview.locale(context),
      // builder: (context, child) => DevicePreview.appBuilder(context, child),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => const HomePage(),
              settings: settings,
            );
          case '/container':
            return MaterialPageRoute(
              builder: (container) => const ContainerPage(),
              settings: settings,
            );
          case '/rowsAndColumns':
            return MaterialPageRoute(
              builder: (rowsAndColumns) => const RowsAndColumns(),
              settings: settings,
            );
          case '/mediaQuery':
            return MaterialPageRoute(
              builder: (mediaquery) => const MediaQueryHome(),
              settings: settings,
            );
          case "layoutBuilder":
            return MaterialPageRoute(
              builder: (layoutBuilder) => const LayoutBuilderPage(),
              settings: settings,
            );
        }
        return null;
      },
    );
  }
}
