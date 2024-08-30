import 'dart:ui';

import 'package:flutter/material.dart';

class CustomWidgets {
  static BoxDecoration boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: const Color(0xff1D1617).withOpacity(0.1),
          blurRadius: 1.0,
          spreadRadius: 0.5,
          offset: const Offset(0, 0),
        ),
      ],
    );
  }

  static Widget appHeader({required Color color, required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 0.5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }

  static Widget glassContainer({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.white.withOpacity(0.5), width: 2),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
