import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../widgets/custom_switch.dart';
import 'bloc/daily_plan_bloc.dart';
import 'models/daily_plan_model.dart';

class DailyPlanScreen extends StatelessWidget {
  const DailyPlanScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DailyPlanBloc>(
      create: (context) => DailyPlanBloc(
        DailyPlanState(dailyPlanModelObj: DailyPlanModel()),
      )..add(DailyPlanInitialEvent()),
      child: const DailyPlanScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.onPrimary,
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            image: DecorationImage(
              image: AssetImage(ImageConstant.imgDailyPlan),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.0),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_daily_plan".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 10.0),
                      Image.asset(
                        ImageConstant.imgImage,
                        height: 72.0,
                        width: 78.0,
                      ),
                      const SizedBox(height: 24.0),
                      _buildToggleGroup(context),
                      const SizedBox(height: 16.0),
                      _buildToggleGroup1(context),
                      const SizedBox(height: 16.0),
                      _buildToggleGroup2(context),
                      const SizedBox(height: 16.0),
                      _buildToggleGroup3(context),
                      const SizedBox(height: 16.0),
                      _buildToggleGroup4(context),
                      const SizedBox(height: 16.0),
                      _buildToggleGroup5(context),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Toggle Group Widget Example
  Widget _buildToggleGroup(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocSelector<DailyPlanBloc, DailyPlanState, bool?>(
            selector: (state) => state.isSelectedSwitch,
            builder: (context, isSelectedSwitch) {
              return CustomSwitch(
                value: isSelectedSwitch ?? false,
                onChange: (value) {
                  context.read<DailyPlanBloc>().add(ChangeSwitchEvent(value: value));
                },
              );
            },
          ),
          const SizedBox(height: 2.0),
        ],
      ),
    );
  }

  /// Additional toggle groups (_buildToggleGroup1, _buildToggleGroup2, etc.)
  /// can follow the same structure as _buildToggleGroup above.
}