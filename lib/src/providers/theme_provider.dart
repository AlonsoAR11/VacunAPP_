import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeProvider({required bool isDarkMode})
      : currentTheme = isDarkMode
            ? ThemeData(
                //useMaterial3: true,
                colorScheme: const ColorScheme.dark(),
                scaffoldBackgroundColor: const Color(0xff1f1d2b),
                backgroundColor: Color(0xff252836),
                shadowColor: Color.fromARGB(24, 46, 46, 46),
                textTheme: TextTheme(
                  headline1: GoogleFonts.poppins(color: Colors.white),
                ),
              )
            : ThemeData(
                //useMaterial3: true,
                colorScheme: const ColorScheme.light(),
                scaffoldBackgroundColor:
                    const Color.fromARGB(255, 240, 244, 255),
                backgroundColor: Colors.white,
                shadowColor: Color.fromARGB(255, 248, 248, 248),
                textTheme: TextTheme(
                  headline1: GoogleFonts.poppins(color: Colors.black),
                ),
              );

  setClaro() {
    currentTheme = ThemeData(
      //useMaterial3: true,
      colorScheme: const ColorScheme.light(),
      scaffoldBackgroundColor: const Color.fromARGB(255, 240, 244, 255),
      backgroundColor: Colors.white,
      shadowColor: Color.fromARGB(255, 248, 248, 248),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(color: Colors.black),
      ),
    );

    notifyListeners();
  }

  setOscuro() {
    currentTheme = ThemeData(
      //useMaterial3: true,
      colorScheme: const ColorScheme.dark(),
      scaffoldBackgroundColor: const Color(0xff1f1d2b),
      backgroundColor: Color(0xff252836),
      shadowColor: Color.fromARGB(24, 46, 46, 46),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(color: Colors.white),
      ),
    );

    notifyListeners();
  }
}
