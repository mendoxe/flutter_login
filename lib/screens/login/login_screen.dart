import 'package:flutter/material.dart';
import 'package:flutter_account/animations/animated_switch_text.dart';
import 'package:flutter_account/animations/fade_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/bottom_sheet_login.dart';
import 'components/email_field.dart';
import 'components/login_socials.dart';
import 'components/password_field.dart';
import 'components/username_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue,
              Color(0xFF48dbfb),
              Color(0xFF48dbfb),
              Color(0xFF48dbfb),
              Color(0xff3498db),
              Color(0xff3498db),
              Color(0xff3498db),
              Colors.blue,
            ],
          ),
        ),
        child: Column(
          children: [
            const Spacer(flex: 2),
            FadeWidget(
              child: SvgPicture.asset('assets/svg/login.svg', height: 160),
            ),
            const SizedBox(height: 30),
            const FadeWidget(
              child: Text(
                "Welcome to placeholder!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
            ),
            const Spacer(flex: 2),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: isLogin ? 0 : 1,
              child: const UsernameField(),
            ),
            const SizedBox(height: 12),
            const FadeWidget(child: EmailField()),
            const SizedBox(height: 12),
            const FadeWidget(child: PasswordField()),
            const SizedBox(height: 12),
            FadeWidget(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedSwitchText(
                    firstText: "Don't have an account?",
                    secondText: "Already have an account?",
                    showFirst: isLogin,
                    style: const TextStyle(color: Colors.white70),
                  ),
                  TextButton(
                    onPressed: _loginRegisterToggle,
                    child: AnimatedSwitchText(
                      firstText: "Register now!",
                      secondText: "Login now!",
                      showFirst: isLogin,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 2),
            FadeWidget(
              child: SizedBox(
                width: 420,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.white54,
                      height: 1,
                      width: 100,
                    ),
                    const Text(
                      "Or continue with",
                      style: TextStyle(color: Colors.white70),
                    ),
                    Container(
                      color: Colors.white54,
                      height: 1,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const FadeWidget(child: LoginSocials()),
            const Spacer(flex: 3),
          ],
        ),
      ),
      floatingActionButton: FadeWidget(
        direction: FadeDirection.RIGHT,
        child: FloatingActionButton.extended(
          backgroundColor: Colors.amber,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          label: const SizedBox(
            width: 40,
            child: Icon(Icons.arrow_right_alt, size: 32),
          ),
          onPressed: () => _submit(context),
        ),
      ),
    );
  }

  void _loginRegisterToggle() {
    setState(() => isLogin = !isLogin);
  }

  void _submit(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      builder: (context) => const BottomSheetLogin(),
    );
  }
}
