import 'package:flutter/material.dart';
import 'package:van_tan_portofio/utils/constants.dart';

import 'adaptiveText.dart';
import 'customBtn.dart';

createHireMeDialog(context) => AlertDialog(
      backgroundColor: Colors.grey[900],
      title: AdaptiveText(
        "Hire Me!",
        style: TextStyle(fontSize: 32.0, color: Colors.white),
        textAlign: null,
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text("Back"))
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomFilledBtn(
            height: 40.0,
            onPressed: () => launchURL(linkedIn),
            btnColor: Colors.blue,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Icon(FontAwesomeIcons.whatsapp),
                const SizedBox(width: 8.0),
                Text("LinkedIn"),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          CustomFilledBtn(
            height: 40.0,
            onPressed: () => launchURL("mailto:$email?subject=" "&body=" ""),
            btnColor: Colors.white,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: 8.0),
                Text("Email"),
              ],
            ),
          ),
        ],
      ),
    );
