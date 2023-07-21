import 'package:flutter/material.dart';
import 'package:quliku_mitra/screen/register_screen.dart';

import '../util/constants.dart';
import '../widget/custom_button.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: SizedBox(
                      width: 128,
                      child: Image.asset(
                        'assets/logo_quliku.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: Center(
                    child: SizedBox(
                      width: 256,
                      child: Image.asset(
                        'assets/homepage_img.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                Expanded(
                    child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                      CustomButton(
                          text: "Masuk",
                          textColor: Colors.white,
                          buttonColor: Constants.COLOR_MAIN,
                          onPressed: () =>
                          {Constants.popto(context, const LoginScreen())})
                    ])),
                const SizedBox(
                  height: 4,
                ),
                CustomButton(
                    text: "Daftar",
                    textColor: Constants.COLOR_MAIN,
                    buttonColor: Colors.white,
                    onPressed: () =>
                    {Constants.goto(context, const RegisterScreen())})
              ],
            ),
          ),
        ));
  }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     // do something
  //     var prefs = ServiceLocator.prefs;
  //     prefs.then((value) {
  //       if (value.getString(Constants.PREF_TOKEN) != null) {
  //         Constants.popto(context, const HomeScreen());
  //       }
  //     });
  //   });
  // }
}
