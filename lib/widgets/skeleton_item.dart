import 'package:flutter/material.dart';
import 'package:servicebike/theme.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonItem extends StatelessWidget {
  const SkeletonItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width:( MediaQuery.of(context).size.width - 83) / 2,
        padding: EdgeInsets.all(
          20,
        ),
        child: Column(
          children: [
            Shimmer.fromColors(child: Container(
              width: double.infinity,
              height: 122,
              color: kLineDarkColor,
            ), baseColor: kLineDarkColor, highlightColor: kWhiteGreyColor,
            ),
            SizedBox(
              height: 20,
            ),
             Shimmer.fromColors(
              child: Container(
                width: double.infinity,
                height: 22,
                color: kLineDarkColor,
              ),
              baseColor: kLineDarkColor,
              highlightColor: kWhiteGreyColor,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Shimmer.fromColors(
                  child: Container(
                    width: 62,
                    height: 25,
                    color: kLineDarkColor,
                  ),
                  baseColor: kLineDarkColor,
                  highlightColor: kWhiteGreyColor,
                ),
                 Shimmer.fromColors(
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kLineDarkColor,
                    ),                
                  ),
                  baseColor: kLineDarkColor,
                  highlightColor: kWhiteGreyColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}