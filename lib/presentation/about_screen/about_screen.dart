import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/about_bloc.dart';
import 'models/about_model.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AboutBloc>(
      create: (context) => AboutBloc(AboutState(aboutModelObj: AboutModel()))
        ..add(AboutInitialEvent()),
      child: const AboutScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildNavigationArrows(context),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 38.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup166),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 78.0),
                        Text(
                          "msg_tell_us_about_you".tr,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          "msg_we_will_create_your".tr,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(height: 52.0),
                        _buildFitnessGoals(context),
                        SizedBox(height: 20.0),
                        _buildGenderInput(context),
                        SizedBox(height: 4.0),
                        _buildAgeInput(context),
                        SizedBox(height: 18.0),
                        _buildHeightInput(context),
                        SizedBox(height: 26.0),
                        _buildWeightInput(context),
                        SizedBox(height: 54.0),
                        _buildNextButton(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationArrows(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 98.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstant.imgGroup24),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            GestureDetector(
              onTap: () => _onTapImgArrowLeft(context),
              child: Image.asset(
                ImageConstant.imgArrowLeftGray50,
                height: 30.0,
                width: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFitnessGoals(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 152.0,
            padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 24.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.onError,
                ],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "lbl_weight_loss".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGenderInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: BlocSelector<AboutBloc, AboutState, TextEditingController?>(
        selector: (state) => state.genderInputController,
        builder: (context, genderInputController) {
          return TextFormField(
            controller: genderInputController,
            decoration: InputDecoration(
              hintText: "lbl_gender".tr,
              contentPadding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 8.0),
              filled: true,
              fillColor: Theme.of(context).colorScheme.primaryContainer,
            ),
          );
        },
      ),
    );
  }

  Widget _buildAgeInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: BlocSelector<AboutBloc, AboutState, TextEditingController?>(
        selector: (state) => state.ageInputController,
        builder: (context, ageInputController) {
          return TextFormField(
            controller: ageInputController,
            decoration: InputDecoration(
              hintText: "lbl_age".tr,
              contentPadding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 8.0),
              filled: true,
              fillColor: Theme.of(context).colorScheme.primaryContainer,
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeightInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: BlocSelector<AboutBloc, AboutState, TextEditingController?>(
        selector: (state) => state.heightInputController,
        builder: (context, heightInputController) {
          return TextFormField(
            controller: heightInputController,
            decoration: InputDecoration(
              hintText: "lbl_height".tr,
              contentPadding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 8.0),
              filled: true,
              fillColor: Theme.of(context).colorScheme.primaryContainer,
            ),
          );
        },
      ),
    );
  }

  Widget _buildWeightInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: BlocSelector<AboutBloc, AboutState, TextEditingController?>(
        selector: (state) => state.weightInputController,
        builder: (context, weightInputController) {
          return TextFormField(
            controller: weightInputController,
            decoration: InputDecoration(
              hintText: "lbl_weight".tr,
              contentPadding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 8.0),
              filled: true,
              fillColor: Theme.of(context).colorScheme.primaryContainer,
            ),
          );
        },
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _onTapNextButton(context),
      child: Text("lbl_next".tr),
    );
  }

  void _onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  void _onTapNextButton(BuildContext context) {
    Navigator.pushNamed(context, '/detailsScreen');
  }
}
