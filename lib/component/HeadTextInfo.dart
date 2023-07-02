import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeadTextInfo extends StatelessWidget {
  HeadTextInfo({super.key, this.user, this.status});

  String? user;
  String? status;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.person_2_outlined,
        color: Colors.black,
        size: 20,
      ),
      title: Text(
        user!,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
      trailing: Container(
          decoration: BoxDecoration(
              color: Color(0xFFDEDEDE), borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            child: Text(
              status!,
              style: TextStyle(fontSize: 10),
            ),
          )),
    );
  }
}
