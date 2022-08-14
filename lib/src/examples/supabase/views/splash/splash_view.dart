import 'package:flutter/material.dart';

import '../signin/sign_in_view.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  
  _goNextView() async {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SignInView(),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _goNextView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
