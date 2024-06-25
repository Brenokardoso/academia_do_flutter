import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:parte_2/pages/buttons_and_text_rotatiton/buttons_and_text_rotatiton.dart';
import 'package:parte_2/pages/child_and_views/child_and_viewes.dart';
import 'package:parte_2/pages/cidades/cidades_page.dart';
import 'package:parte_2/pages/container/container_page.dart';
import 'package:parte_2/pages/dialogs/dialogs.dart';
import 'package:parte_2/home_page/home_page.dart';
import 'package:parte_2/pages/forms/forms_page.dart';
import 'package:parte_2/pages/layoutBuilder/layout_builder_page.dart';
import 'package:parte_2/pages/media_query/media_query.dart';
import 'package:parte_2/pages/rows_and_columns/rows_and_coluns_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:parte_2/pages/dialogs/dialogs.dart';
import 'package:parte_2/pages/snackbar/snackbar_page.dart.dart';

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
      // theme: ThemeData(
      //     primaryColor: Colors.orange, // Cor padrão do site
      //     appBarTheme: AppBarTheme(backgroundColor: Colors.limeAccent)),
      title: 'Flutter mão na massa  ',
      initialRoute: '/',
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
          case "/layoutBuilder":
            return MaterialPageRoute(
              builder: (layoutBuilder) => const LayoutBuilderPage(),
              settings: settings,
            );
          case '/buttonsAndTextRottation':
            return MaterialPageRoute(
              builder: (buttonsAndTextRottation) =>
                  const ButtonsAndTextRottation(),
              settings: settings,
            );
          case '/childAndViews':
            return MaterialPageRoute(
              builder: (childAndViews) => const ChildAndViews(),
              settings: settings,
            );
          case '/dialogs':
            return MaterialPageRoute(
              builder: (dialogs) => const CustomDialogsPage(),
              settings: settings,
            );
          case '/snackBar':
            return MaterialPageRoute(
              settings: settings,
              builder: (snackBar) => const CustomSnackBarPage(),
            );
          case '/forms':
            return MaterialPageRoute(
              settings: settings,
              builder: (forms) => FormsPage(),
            );
          case 'cidade':
            return MaterialPageRoute(
              settings: settings,
              builder: (cidade) => const CidadesPage(),
            );
        }

        return null;
      },
    );
  }
}
