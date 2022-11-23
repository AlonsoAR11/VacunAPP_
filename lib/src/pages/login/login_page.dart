import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vacunapp/src/pages/navigation/navigation_page.dart';
import 'package:vacunapp/src/preferences/preferences.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Inicio de sesión',
                style: GoogleFonts.poppins(
                    fontSize: 28, fontWeight: FontWeight.w700),
              ),
              Text(
                'Ingrese sus credencionales',
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              const SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      //color: Color.fromARGB(255, 248, 248, 248),
                      color: Theme.of(context).shadowColor,
                      offset: const Offset(0.0, 2.0),
                      blurRadius: Preferences.theme == false ? 20.0 : 3.0,
                    )
                  ],
                ),
                child: TextFormField(
                  style: GoogleFonts.poppins(color: Colors.black),
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: const Color.fromARGB(255, 255, 104, 63),
                  decoration: customInputDecoration(
                    hintText: 'E-mail',
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      //color: Color.fromARGB(255, 248, 248, 248),
                      color: Theme.of(context).shadowColor,
                      offset: const Offset(0.0, 2.0),
                      blurRadius: Preferences.theme == false ? 20.0 : 3.0,
                    )
                  ],
                ),
                child: TextFormField(
                  style: GoogleFonts.poppins(color: Colors.black),
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: const Color.fromARGB(255, 255, 104, 63),
                  decoration: customInputDecoration(
                    hintText: 'Contraseña',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  '¿Olvidó su contraseña?',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 255, 104, 63),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const NavigationPage(),
                      ));
                },
                color: const Color.fromARGB(255, 255, 104, 63),
                child: Text(
                  'Ingresar',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¿No tienes una cuenta?',
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              'Registrar',
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 255, 104, 63),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration customInputDecoration({
    final String? hintText,
    final Widget? prefixIcon,
  }) {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0,
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0,
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0,
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      filled: true,
      fillColor: Colors.white,
      hintText: hintText,
      hintStyle: GoogleFonts.poppins(color: Colors.grey),
      prefixIcon: prefixIcon,
      contentPadding: const EdgeInsets.all(20.0),
    );
  }
}
