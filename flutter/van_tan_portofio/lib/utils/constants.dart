import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:van_tan_portofio/models/contact.dart';
import 'package:van_tan_portofio/models/project.dart';
import 'package:van_tan_portofio/models/service.dart';

const Color kPrimaryColor = Color.fromRGBO(21, 181, 114, 1);
const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

const facebook = "https://www.facebook.com/vantan.nguyen.7568596/";
const email = "vantan.nguyen0726@gmail.com";
const github = "https://github.com/doctor-blue";
const linkedIn =
    "https://www.linkedin.com/in/t%C3%A2n-nguy%E1%BB%85n-v%C4%83n-35167b1a5/";
const youtube = "https://www.youtube.com/channel/UCMNlL-Nz-XvDDDPgJ-SNsig";

const facbookIcon =
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png";
const linkedInIcon = "https://img.icons8.com/metro/308/ffffff/linkedin.png";

const githubIcon =
    "https://img.icons8.com/material-rounded/384/ffffff/github.png";
const youtubeIcon =
    "https://img.icons8.com/material-rounded/384/ffffff/youtube.png";

const playStoreIcon =
    "https://img.icons8.com/material-rounded/384/ffffff/playstore.png";
const appStoreIcon =
    "https://img.icons8.com/ios/50/ffffff/apple-app-store--v2.png";

const flutterIcon = "https://img.icons8.com/ios-filled/50/ffffff/flutter.png";

final socicals = [
  Link(title: "Facebook", icon: facbookIcon, link: facebook),
  Link(title: "LinkedIn", icon: linkedInIcon, link: linkedIn),
  Link(title: "Github", icon: githubIcon, link: github),
  Link(title: "Youtube", icon: youtubeIcon, link: youtube),
];

void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

final services = [
  Service(
      title: "Full App Development",
      icon: "assets/services/app.png",
      description:
          "Mobile app development with:\n-Android Native (Kotlin, Java)\n-React Native\n-Flutter",
      link: facebook),
  Service(
      title: "Create programming content on Youtube",
      icon: "assets/services/youtube_content.png",
      description:
          "Share the knowledge I know to everybody through my Youtube channel",
      link: "https://www.youtube.com/channel/UCMNlL-Nz-XvDDDPgJ-SNsig"),
  Service(
      title: "Open Source - GitHub",
      icon: "assets/services/open.png",
      description:
          "Open source GitHub Projects\n- Android and Flutter libraries\n- Open source mobile app\n",
      link: github)
];

final projects = [
  Project(
      title: "Alpha work",
      description: "Business management application",
      banner: "assets/projects/alpha_work.png",
      logo: "assets/projects/longway_logo.png",
      projectLink: [
        Link(
            title: "Play Store",
            icon: playStoreIcon,
            link:
                "https://play.google.com/store/apps/details?id=vn.longway.s2018"),
        Link(
            title: "App Store",
            icon: appStoreIcon,
            link: "https://apps.apple.com/vn/app/longways/id1441386076"),
      ]),
  Project(
      title: "Moony",
      description:
          "Android Native application.\nPersonal financial management application",
      banner: "assets/projects/moony.png",
      logo: "assets/projects/moony_logo.png",
      projectLink: [
        Link(
            title: "Github",
            icon: githubIcon,
            link: "https://github.com/doctor-blue/moony-calc"),
        Link(
            title: "Play Store",
            icon: playStoreIcon,
            link:
                "https://play.google.com/store/apps/details?id=com.moony.calc"),
      ]),
  Project(
      title: "Lambda",
      description:
          "IoT application.This application makes some devices smart and easy to control.",
      banner: "assets/projects/lambda.png",
      logo: "assets/projects/lambda_logo.png",
      projectLink: [
        Link(
            title: "Play Store",
            icon: playStoreIcon,
            link:
                "https://play.google.com/store/apps/details?id=vn.longway.smart"),
        Link(
            title: "App Store",
            icon: appStoreIcon,
            link:
                "https://apps.apple.com/vn/app/longway/id1531613315#?platform=iphone"),
      ]),
  Project(
      title: "MoonyNavBar",
      description:
          "A lightweight Android and Flutter bottom bar library. Simple and easy to use.",
      banner: "assets/projects/moony_nav_bar.gif",
      logo: "assets/projects/android.png",
      projectLink: [
        Link(
            title: "Android Native",
            icon: githubIcon,
            link: "https://github.com/doctor-blue/moony_nav_bar_android"),
        Link(
            title: "Flutter",
            icon: flutterIcon,
            link: "https://pub.dev/packages/moony_nav_bar"),
      ]),
  Project(
      title: "Color Detector",
      description:
          "An open source project I'm building to be able to detect color directly on the user's camera.",
      banner: "assets/projects/color_detector.png",
      logo: "assets/projects/color_detector_logo.png",
      projectLink: [
        Link(
            title: "Github",
            icon: githubIcon,
            link: "https://github.com/doctor-blue/Color-Detector"),
        Link(
            title: "Play Store",
            icon: playStoreIcon,
            link:
                "https://play.google.com/store/apps/details?id=com.doctorblue.colordetector&hl=en"),
      ]),
  Project(
      title: "Been Love Together",
      description:
          "Been Together - Been Love Memory app is essential for couples or people in love to tracker anniversary day!",
      banner: "assets/projects/been_love.png",
      logo: "assets/projects/been_love_logo.png",
      projectLink: [
        Link(
            title: "Play Store",
            icon: playStoreIcon,
            link:
                "https://play.google.com/store/apps/details?id=couplelove.beentogether.beenlovememory"),
      ]),
  Project(
      title: "Pedometer",
      description:
          "Application includes: Use the built-in sensors to count your steps.Calculate how many calories you consumed.",
      banner: "assets/projects/pedometer.png",
      logo: "assets/projects/pedometer_logo.png",
      projectLink: [
        Link(
            title: "Play Store",
            icon: playStoreIcon,
            link:
                "https://play.google.com/store/apps/details?id=com.doctor.blue.pedometer_countyoursteps"),
      ]),
  Project(
      title: "Super Touch",
      description:
          "This is my Open Source Project. This is a similar AssistiveTouch simulation Android project on iphone.",
      banner: "assets/projects/super_touch.png",
      logo: "assets/projects/super_touch_logo.png",
      projectLink: [
        Link(
            title: "Github",
            icon: githubIcon,
            link: "https://github.com/doctor-blue/SuperTouch"),
      ]),
];

final contacts = [
  Contact(title: "Email", icon: Icons.mail, detail: email),
  Contact(title: "Location", icon: Icons.home, detail: "Ha Noi, Viet Nam"),
];
