import "package:flutter/material.dart";

// ignore: must_be_immutable
class ContentItem extends StatelessWidget {
  ContentItem({
    this.title,
    this.subTitle,
    this.indicatorContent,
    this.customRadius,
    required this.warnaBiru,
    required this.warnaHijau,
  });

  final Color warnaBiru;
  final Color warnaHijau;
  String? title;
  String? subTitle;
  String? indicatorContent;
  BorderRadiusGeometry? customRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration:
            BoxDecoration(color: Colors.white, borderRadius: customRadius!),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: ListTile(
            leading: CircleAvatar(
              maxRadius: 15,
              backgroundColor: warnaBiru,
              child: Icon(
                Icons.sticky_note_2_outlined,
                color: Colors.white,
                size: 14,
              ),
            ),
            title: Container(
              child: Text(
                title!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            subtitle: Text(
              subTitle!,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                  color: warnaHijau, borderRadius: BorderRadius.circular(100)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Text(
                  indicatorContent!,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
