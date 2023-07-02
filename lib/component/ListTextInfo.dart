import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListTextInfo extends StatelessWidget {
  ListTextInfo({
    super.key,
    this.text,
    this.leadingIcon,
    this.trailingIcon,
    required this.warnaBiru,
  });

  final Color warnaBiru;
  String? text;
  IconData? leadingIcon;
  IconData? trailingIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
       leadingIcon,
        color: Colors.black,
        size: 20,
      ),
      title: Text(
        text!,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      trailing: GestureDetector(
        onTap: () {},
        child: Icon(
         trailingIcon,
          color: warnaBiru,
          size: 20,
        ),
      ),
    );
  }
}
