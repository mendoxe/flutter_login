import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginSocials extends StatelessWidget {
  const LoginSocials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocial(
          FaIcon(
            FontAwesomeIcons.facebook,
            color: Colors.lightBlue[800],
          ),
          () => {},
        ),
        _buildSocial(
          const FaIcon(
            FontAwesomeIcons.google,
            color: Colors.deepOrange,
          ),
          () => {},
        ),
        _buildSocial(
          const FaIcon(FontAwesomeIcons.github),
          () => {},
        ),
      ],
    );
  }

  Widget _buildSocial(Widget child, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
          color: Colors.white70,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
