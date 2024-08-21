import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../cors/Routing/routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward();
    Future.delayed(const Duration(seconds: 4), () {
     
      GoRouter.of(context).push(Routes.onBoardingScreen);
    });
  }

  @override
  void dispose() {
    super.dispose();

    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: animation,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: 500,
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),

                ),
                Text(
                  "AnimeCorn",
                  style: TextStyle(
                      color: Color.fromARGB(255, 110, 110, 110),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
              // Adjust the height as needed
            ),
          ),
        ],
      ),
    );
  }
}

void navigateToHome() {}
