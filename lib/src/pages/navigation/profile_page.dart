import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vacunapp/src/preferences/preferences.dart';
import 'package:vacunapp/src/providers/theme_provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch.adaptive(
          value: Preferences.theme,
          onChanged: (value) {
            Preferences.theme = value;
            final themeProvider =
                Provider.of<ThemeProvider>(context, listen: false);

            value ? themeProvider.setOscuro() : themeProvider.setClaro();
            setState(() {});
          },
        ),
      ),
    );
  }
}
