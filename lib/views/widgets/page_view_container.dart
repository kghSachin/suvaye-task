import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class PageViewContainer extends StatelessWidget {
  final Color color;
  const PageViewContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: color),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Constants.pageViewHeading,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff344054),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                Constants.pageviewMessage,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ));
  }
}
