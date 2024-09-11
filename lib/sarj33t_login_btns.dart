library sarj33t_login_btns;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sarj33t_login_btns/src/button_widget.dart';
import 'package:sarj33t_login_btns/src/constants.dart';

enum Buttons {
  google,
  facebook,
  microsoft,
  linkedIn,
  twitter,
  gitHub,
  apple,
  email,
}

class SignInButton extends StatelessWidget {
  final Function onPressed;
  final Buttons button;
  final ShapeBorder? shape;
  final String? text;

  const SignInButton(this.button,
      {super.key, required this.onPressed, this.text, this.shape});

  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Buttons.email:
        return ButtonWidget(
          key: const ValueKey(email),
          text: text ?? '$signWith $email',
          icon: Icons.email,
          onPressed: onPressed,
          backgroundColor: colorWhite,
          textColor: colorBlack,
          iconColor: colorOrange,
          shape: shape ?? ButtonTheme.of(context).shape,
        );
      case Buttons.google:
        return ButtonWidget(
          key: const ValueKey(google),
          text: text ?? '$signWith $google',
          image: Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: const Image(
                image: AssetImage(
                  'assets/google_logo.png',
                  package: 'sarj33t_login_btns',
                ),
                height: 25.0,
                width: 20.0,
              ),
            ),
          ),
          onPressed: onPressed,
          backgroundColor: colorWhite,
          textColor: colorBlack,
          iconColor: colorBlue,
          shape: shape ?? ButtonTheme.of(context).shape,
        );
      case Buttons.facebook:
        return ButtonWidget(
          key: const ValueKey(facebook),
          text: text ?? '$signWith $facebook',
          icon: FontAwesomeIcons.facebookF,
          onPressed: onPressed,
          backgroundColor: facebookBgColor,
          textColor: colorWhite,
          iconColor: colorWhite,
          shape: shape ?? ButtonTheme.of(context).shape,
        );
      case Buttons.gitHub:
        return ButtonWidget(
          key: const ValueKey(github),
          text: text ?? '$signWith $github',
          icon: FontAwesomeIcons.github,
          onPressed: onPressed,
          backgroundColor: githubBgColor,
          textColor: colorWhite,
          iconColor: colorWhite,
          shape: shape ?? ButtonTheme.of(context).shape,
        );
      case Buttons.apple:
        return ButtonWidget(
          key: const ValueKey(apple),
          text: text ?? '$signWith $apple',
          icon: FontAwesomeIcons.apple,
          onPressed: onPressed,
          backgroundColor: colorWhite,
          textColor: colorBlack,
          iconColor: colorRed,
          shape: shape ?? ButtonTheme.of(context).shape,
        );
      case Buttons.linkedIn:
        return ButtonWidget(
          key: const ValueKey(linkedIn),
          text: text ?? '$signWith $linkedIn',
          icon: FontAwesomeIcons.linkedin,
          onPressed: onPressed,
          backgroundColor: linkedInBgColor,
          textColor: colorWhite,
          iconColor: colorWhite,
          shape: shape ?? ButtonTheme.of(context).shape,
        );
      case Buttons.microsoft:
        return ButtonWidget(
          key: const ValueKey(microsoft),
          text: text ?? '$signWith $microsoft',
          icon: FontAwesomeIcons.microsoft,
          onPressed: onPressed,
          backgroundColor: colorWhite,
          textColor: colorBlack,
          iconColor: colorBlue,
          shape: shape ?? ButtonTheme.of(context).shape,
        );
      case Buttons.twitter:
        return ButtonWidget(
          key: const ValueKey(twitter),
          text: text ?? '$signWith $twitter',
          icon: FontAwesomeIcons.twitter,
          onPressed: onPressed,
          backgroundColor: twitterBgColor,
          textColor: colorWhite,
          iconColor: colorWhite,
          shape: shape ?? ButtonTheme.of(context).shape,
        );
    }
  }
}
