import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/details_bloc.dart';
import 'models/details_model.dart';
import 'models/detailsgrid_item_model.dart';
import 'widgets/detailsgrid_item_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DeatilsBloc>(
      create: (context) => DeatilsBloc(DetailsState(deatilsModelObj: DeatilsModel()))
        ..add(DetailsInitialEvent()),
      child: DetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.maxFinite,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.red900, appTheme.gray900, appTheme.black900],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStackSection(context),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 114.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 88.h),
                    _buildDetailsGrid(context),
                    SizedBox(height: 126.h),
                    CustomElevatedButton(
                      width: 122.h,
                      text: "Ib_next".tr,
                      margin: EdgeInsets.only(right: 6.h),
                      onPressed: () {
                        onTapNext(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Stack Section Widget
  Widget _buildStackSection(BuildContext context) {
    return SizedBox(
      height: 160.h,
      width: 382.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(right: 12.h),
              child: CustomAppBar(
                leadingWidth: 30.h,
                leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeftGray50,
                  margin: EdgeInsets.only(left: 13.h),
                  onTap: () {
                    onTapArrowLeftOne(context);
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h, bottom: 24.h),
              child: Text(
                "Ibl_hi_anchana".tr,
                style: CustomTextStyles.headlineLargeExtraBold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Grid Section Widget
  Widget _buildDetailsGrid(BuildContext context) {
    return BlocSelector<DetailsBloc, DetailsState, DetailsModel?>(
      selector: (state) => state.detailsModelObj,
      builder: (context, detailsModelObj) {
        return ResponsiveGridListBuilder(
          minItemWidth: 1,
          minItemsPerRow: 2,
          maxItemsPerRow: 2,
          horizontalGridSpacing: 12.h,
          verticalGridSpacing: 12.h,
          builder: (context, items) => ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            children: items,
          ),
          gridItems: List.generate(
            detailsModelObj?.detailsgridItemList.length ?? 0,
            (index) {
              DetailsgridItemModel model = detailsModelObj?.detailsgridItemList[index] ?? DetailsgridItemModel();
              return DetailsgridItemWidget(model);
            },
          ),
        );
      },
    );
  }

  /// Navigates to the previous screen
  void onTapArrowLeftOne(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the dailyPlanScreen when the action is triggered
  void onTapNext(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.dailyPlanScreen);
  }
}
