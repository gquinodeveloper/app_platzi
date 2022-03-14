import 'package:app_platzi/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kBackground,
      body: Container(
        margin: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400.0,
              width: double.infinity,
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 45.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Transform.rotate(
                        angle: -math.pi - 15.3,
                        child: Container(
                          width: 85.0,
                          height: 85.0,
                          margin: const EdgeInsets.only(top: 30.0),
                          decoration: BoxDecoration(
                            color: AppTheme.kYellow,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: AppTheme.kYellow.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 80.0,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Image.asset("assets/icons_js.png"),
                        ),
                      ),
                      const SizedBox(height: 95.0),
                      Transform.rotate(
                        angle: -math.pi - 3.3,
                        child: Container(
                          width: 85.0,
                          height: 85.0,
                          decoration: BoxDecoration(
                            color: AppTheme.kPurple,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: AppTheme.kPurple.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 80.0,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Image.asset("assets/icons_css.png"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Transform.rotate(
                        angle: -math.pi - 15.3,
                        child: Container(
                          width: 110.0,
                          height: 110.0,
                          decoration: BoxDecoration(
                            color: AppTheme.kGreen,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: AppTheme.kGreen.withOpacity(0.6),
                                spreadRadius: 4,
                                blurRadius: 80.0,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Image.asset("assets/icons_figma.png"),
                        ),
                      ),
                      const SizedBox(height: 90.0),
                      Transform.rotate(
                        angle: -math.pi - 15.3,
                        child: Container(
                          width: 95.0,
                          height: 95.0,
                          decoration: BoxDecoration(
                            color: AppTheme.kBlue,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: AppTheme.kBlue.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 80.0,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Image.asset("assets/icons_python.png"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Text(
              "Logra todas tus \nmetas ahora",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 40.0),
            const Text(
              "Cursos online para especializarte en las profesiones que lideran el mercado de hoy.",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 60.0),
            GestureDetector(
              onTap: () {
                print("Click sesión");
              },
              child: Container(
                width: double.infinity,
                height: 60.0,
                alignment: Alignment.center,
                child: const Text(
                  "Iniciar sesión",
                  style: TextStyle(
                      color: AppTheme.kBackground,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(151, 201, 63, 1.0),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: 60.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: const Text(
                "Crear cuenta",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            const Center(
              child: Text(
                "Iniciar más tarde",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
