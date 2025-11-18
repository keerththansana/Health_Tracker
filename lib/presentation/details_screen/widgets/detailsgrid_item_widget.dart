import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/detailsgrid_item_model.dart';

// ignore_for_file: must_be_immutable
class DetailsgridItemWidget extends StatelessWidget {
  DetailsgridItemWidget(this.detailsgridItemModelObj, {Key? key}) : super(key: key);

  DetailsgridItemModel detailsgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Text(
              detailsgridItemModelObj?.whatisyour ?? '',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLargeWhiteA700,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            height: 28.h,
            width: 166.h,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(10.h),
            ),
          ),
        ],
      ),
    );
  }
}
