import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color textColor, backgroundColor, iconColor;
  final Function? onPressed;
  final String text;
  final IconData? icon;
  final Widget? image;
  final ShapeBorder? shape;

  const ButtonWidget(
      {super.key,
      required this.backgroundColor,
      required this.onPressed,
      required this.text,
      this.icon,
      required this.textColor,
      required this.iconColor,
      this.image,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: key,
      onPressed: () {
        if (onPressed != null) {
          onPressed!.call();
        }
      },
      color: backgroundColor,
      shape: shape ?? ButtonTheme.of(context).shape,
      padding: const EdgeInsets.all(0),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 220,
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                ),
                child: image ??
                    Icon(
                      icon,
                      size: 20,
                      color: iconColor,
                    ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: textColor,
                  fontSize: 14,
                  backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
