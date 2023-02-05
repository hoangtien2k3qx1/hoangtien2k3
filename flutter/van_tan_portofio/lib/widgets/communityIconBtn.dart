import 'package:flutter/material.dart';

class CommunityIconBtn extends StatelessWidget {
  final String icon;
  final String link;
  final double height;

  const CommunityIconBtn({Key? key, required this.icon, required this.link, required this.height});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: InkWell(
        child: Image.asset(
          icon,
          height: height,
        ),
        onTap: () => {},
      ),
    );
  }
}
