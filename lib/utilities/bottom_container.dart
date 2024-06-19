import 'package:flutter/material.dart';
import 'package:supabase_auth/utilities/buttons.dart';
import 'package:supabase_auth/utilities/main_page_richtext.dart';

class BottomContainer extends StatelessWidget {
  final double height;
  final double width;
  final double topMargin;
  final Color backgroundColor;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final double bottomMargin;
  const BottomContainer({
    super.key,
    required this.height,
    required this.width,
    required this.topMargin,
    required this.backgroundColor,
    required this.bottomMargin,
    required this.borderRadius,
    required this.borderColor,
    required this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(top: topMargin, bottom: bottomMargin),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MainPageRichText(),
                CustomButtons.heartButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
