import 'package:coorg/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool changeButton = false;

  moveToHome() async {
    setState(() {
      changeButton = true;
    });

    await Future.delayed(const Duration(seconds: 3));

    await Navigator.pushNamed(context, MyRoutes.homepageRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/coorg_bg.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 10),
              child: GlowText(
                'COORG',
                style: TextStyle(
                  color: Colors.grey[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
                glowColor: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 10),
              child: GlowText(
                'The Scotland of India',
                style: TextStyle(
                  color: Colors.grey[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
                glowColor: Colors.blue,
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Material(
              borderRadius: BorderRadius.circular(changeButton ? 50 : 10),
              color: Colors.grey[200],
              child: InkWell(
                onTap: () => moveToHome(),
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: changeButton
                      ? 50
                      : MediaQuery.of(context).size.width * .9,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton
                      ? const CircularProgressIndicator(
                          color: Colors.blue,
                          strokeWidth: 3,
                        )
                      : const Text(
                          'Let\'s Explore',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 18,
                          ),
                        ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
