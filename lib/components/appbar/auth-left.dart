import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_components/config/styles.dart';

class AuthLeftAppBar extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final TextStyle? textStyle;

  const AuthLeftAppBar({Key? key, this.onTap, required this.title, this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, bottom: 12, left: 8, right: 8, ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(title != null)
                  Flexible(
                    flex: 1,
                      child:
                      Container(
                        padding: EdgeInsets.only(
                          top: 4,
                          left: 8,
                          right: 8,
                        ),
                        child: Text("${title}",
                          style: textStyle ?? MainStyles.boldTextStyle.copyWith(fontSize: 20), textAlign: TextAlign.left,),
                      )
                  ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: onTap ?? () => {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)
                        ),
                        padding: EdgeInsets.fromLTRB(
                          8,
                          8,
                          8,
                          8,
                        ),
                        //                  padding: EdgeInsets.all(4),
                        // child: Text("d"),
                        child: SvgPicture.asset("assets/svgs/menu/notifications.svg", height: 24,),
                      ),
                    ),
                    GestureDetector(
                      // color: MainColors.white,
                      onTap: onTap ?? () => {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)
                        ),
                        padding: EdgeInsets.fromLTRB(
                          8,
                          8,
                          8,
                          8,
                        ),
                        //                  padding: EdgeInsets.all(4),
                        // child: Text("d"),
                        child: SvgPicture.asset("assets/svgs/menu/profile.svg", height: 24,),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}