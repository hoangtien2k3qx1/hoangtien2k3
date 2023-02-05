// ignore: unused_import
import 'package:flip_card/flip_card.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:van_tan_portofio/utils/constants.dart';

class ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;
  final String serviceLink;
  final double cardWidth;
  final double cardHeight;
  final Widget cardBack;

  const ServiceCard({
    required this.serviceIcon,
    required this.serviceTitle,
    required this.serviceDescription,
    required this.serviceLink,
    required this.cardHeight,
    required this.cardWidth,
    required this.cardBack,
  });

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        launchURL(widget.serviceLink);
      },

      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          border: Border(
              bottom: BorderSide(
            color: kPrimaryColor,
            width: 3.0,
          )),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              widget.serviceIcon,
              height: height * 0.125,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              widget.serviceTitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: height * 0.022,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      // child: FlipCard(
      //   flipOnTouch: kIsWeb ? false : true,
      //   key: cardKey,
      //   back: Container(
      //       width: widget.cardWidth,
      //       height: widget.cardHeight,
      //       padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      //       decoration: BoxDecoration(
      //         color:
      //            Colors.grey[900],
      //         border: Border(
      //           bottom: isHover
      //               ? BorderSide(
      //                   color: kPrimaryColor,
      //                   width: 3.0,
      //                 )
      //               : BorderSide(),
      //         ),
      //         boxShadow: isHover
      //             ? [
      //                 BoxShadow(
      //                   color: kPrimaryColor.withAlpha(100),
      //                   blurRadius: 12.0,
      //                   offset: Offset(0.0, 0.0),
      //                 )
      //               ]
      //             : [
      //                 BoxShadow(
      //                   color: Colors.black.withAlpha(100),
      //                   blurRadius: 12.0,
      //                   offset: Offset(0.0, 0.0),
      //                 )
      //               ],
      //       ),
      //       child: widget.cardBack),
      //   front: Container(
      //     width: widget.cardWidth,
      //     height: widget.cardHeight,
      //     padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      //     decoration: BoxDecoration(
      //       color: Colors.grey[900],
      //       border: Border(
      //         bottom: isHover
      //             ? BorderSide(
      //                 color: kPrimaryColor,
      //                 width: 3.0,
      //               )
      //             : BorderSide(),
      //       ),
      //       boxShadow: isHover
      //           ? [
      //               BoxShadow(
      //                 color: kPrimaryColor.withAlpha(100),
      //                 blurRadius: 12.0,
      //                 offset: Offset(0.0, 0.0),
      //               )
      //             ]
      //           : [
      //               BoxShadow(
      //                 color: Colors.black.withAlpha(100),
      //                 blurRadius: 12.0,
      //                 offset: Offset(0.0, 0.0),
      //               )
      //             ],
      //     ),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Image.asset(
      //           widget.serviceIcon,
      //           height: height * 0.125,
      //         ),
      //         SizedBox(
      //           height: height * 0.02,
      //         ),
      //         Text(
      //           widget.serviceTitle,
      //           textAlign: TextAlign.center,
      //           style: GoogleFonts.montserrat(
      //             fontSize: height * 0.022,
      //             letterSpacing: 2.0,
      //             fontWeight: FontWeight.w500,
      //             color:
      //                 Colors.white,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
