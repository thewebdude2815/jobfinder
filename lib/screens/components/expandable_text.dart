import 'package:flutter/material.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class ExpandableText extends StatefulWidget {
  final String? text;
  final double max;
  const ExpandableText({Key? key, this.text, required this.max})
      : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  TextPainter? textPainter;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return isOpen
        ? SizedBox(
            child: Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(children: [
                  TextSpan(
                    text: widget.text,
                    style: AppTextStyle.bodyNormal15
                        .copyWith(color: AppColors.kBlackColor),
                  ),
                  WidgetSpan(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isOpen = !isOpen;
                        });
                      },
                      child: Text(
                        " See less",
                        style: AppTextStyle.bodyNormal15.copyWith(
                            color: AppColors.kMainColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ]),
              ),
            ),
          )
        : Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              textAlign: TextAlign.start,
              // maxLines: 6,
              text: TextSpan(children: [
                TextSpan(
                  text:
                      "${widget.text!.substring(0, int.parse("${(widget.text!.length * widget.max).toInt()}"))}  ",
                  style: AppTextStyle.bodyNormal15
                      .copyWith(color: AppColors.kBlackColor),
                ),
                WidgetSpan(
                  child: InkWell(
                    mouseCursor: SystemMouseCursors.click,
                    onTap: () {
                      setState(() {
                        isOpen = !isOpen;
                      });
                    },
                    child: Text(
                      " See more",
                      style: AppTextStyle.bodyNormal15.copyWith(
                          color: AppColors.kMainColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ]),
            ),
          );
  }
}
