import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeadTextContent extends StatelessWidget {
  HeadTextContent({
    super.key,
    this.leadingIcon,
    this.title,
    this.trailingIcon,
    this.functionButton,
    required this.warnaSoftBlack,
  });

  final Color warnaSoftBlack;
  String? title;
  IconData? leadingIcon;
  IconData? trailingIcon;
  dynamic functionButton;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        leadingIcon,
        color: warnaSoftBlack,
      ),
      title: Text(
        title!,
        style: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 12, color: warnaSoftBlack),
      ),
      trailing: GestureDetector(
        onTap: functionButton,
        child: Icon(
          trailingIcon,
          color: warnaSoftBlack,
        ),
      ),
    );
  }
}
