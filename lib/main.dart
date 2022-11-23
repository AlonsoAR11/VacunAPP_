import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vacunapp/src/pages/navigation/navigation_page.dart';
import 'package:vacunapp/src/pages/pages.dart';
import 'package:vacunapp/src/preferences/preferences.dart';
import 'package:vacunapp/src/providers/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(isDarkMode: Preferences.theme),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //theme: ThemeData(
      //primarySwatch: Colors.blue,
      //scaffoldBackgroundColor: const Color.fromARGB(255, 240, 244, 255),
      //),
      theme: Provider.of<ThemeProvider>(context).currentTheme,

      home: const NavigationPage(),
    );
  }
}
