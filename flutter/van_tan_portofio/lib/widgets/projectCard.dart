import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:van_tan_portofio/utils/constants.dart';
import 'package:van_tan_portofio/widgets/socialMediaIcon.dart';

import 'adaptiveText.dart';

class ProjectCard extends StatefulWidget {
  final String? projectIcon;
  final IconData? projectIconData;
  final String projectTitle;
  final String projectDescription;
  final List projectLinks;
  final double cardWidth;
  final double cardHeight;
  final String? backImage;
  final Widget bottomWidget;
  final Function() onTap;

  const ProjectCard(
      {Key? key,
      required this.backImage,
      required this.bottomWidget,
      required this.projectIcon,
      required this.projectTitle,
      required this.projectDescription,
      required this.projectLinks,
      required this.projectIconData,
      required this.cardWidth,
      required this.cardHeight,
      required this.onTap})
      : super(key: key);
  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: widget.onTap,
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          border: Border(
            bottom: isHover
                ? BorderSide(
                    color: kPrimaryColor,
                    width: 3.0,
                  )
                : BorderSide(
                    // color: _themeProvider.lightTheme
                    //     ? Colors.white
                    //     : Colors.grey[900],
                    ),
          ),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: kPrimaryColor.withAlpha(100),
                    blurRadius: 12.0,
                    offset: Offset(0.0, 0.0),
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 12.0,
                    offset: Offset(0.0, 0.0),
                  )
                ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.projectIcon != null
                    ? (width > 1135 || width < 950)
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                widget.projectIcon!,
                                height: height * 0.08,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                widget.projectTitle,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  fontSize: height * 0.015,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        : Image.asset(
                            widget.projectIcon!,
                            height: height * 0.08,
                          )
                    : Container(),
                widget.projectIconData != null
                    ? Icon(
                        widget.projectIconData,
                        color: kPrimaryColor,
                        size: height * 0.1,
                      )
                    : SizedBox(),
                (width > 1135 || width < 950)
                    ? AdaptiveText(
                        widget.projectTitle,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.02,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[900],
                        ),
                      )
                    : Container(),
                SizedBox(
                  height: height * 0.005,
                ),
                AdaptiveText(
                  widget.projectDescription,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.015,
                      letterSpacing: 2,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      height: width >= 600 ? 1.5 : 1.2),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                      widget.projectLinks.length,
                      (index) => SocialMediaIconBtn(
                            icon: widget.projectLinks[index].icon,
                            socialLink: widget.projectLinks[index].link,
                            height: height * 0.03,
                            horizontalPadding: 0,
                          )),
                ),
              ],
            ),
            AnimatedOpacity(
              duration: Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: widget.backImage != null
                    ? Image.asset(widget.backImage!)
                    : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
