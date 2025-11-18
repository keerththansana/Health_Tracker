import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../models/agecategories_item_model.dart';

// ignore_for_file: must_be_immutable
class AgecategoriesItemWidget extends StatelessWidget {
  AgecategoriesItemWidget(this.agecategoriesItemModelObj, {Key? key})
      : super(
          key: key,
        );

  AgecategoriesItemModel agecategoriesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: agecategoriesItemModelObj.underEighteen!,
          height: 20.h,
          width: 20.h,
          radius: BorderRadius.circular(
            10.0.h,
          ),
          alignment: Alignment.bottomCenter,
        ),
        SizedBox(width: 14.h),
        Expanded(
          child: Container(
            height: 24.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  agecategoriesItemModelObj.underCounter!,
                  style: theme.textTheme.titleLarge,
                ),
                Text(
                  agecategoriesItemModelObj.undercounter1!,
                  style: theme.textTheme.titleLarge,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
