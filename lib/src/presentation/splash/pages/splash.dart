import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/configs/assets/app_svg.dart';
import '../../../core/configs/navigation/navigation_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppSvg.logo),
      ),
    );
  }
  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    navigateToStarted(context);
  }

}
