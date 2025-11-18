part of 'about_bloc.dart';

/// Represents the state of About in the application.

// ignore_for_file: must_be_immutable
class AboutState extends Equatable {
  AboutState({
    this.genderInputController,
    this.ageInputController,
    this.heightInputController,
    this.weightInputController,
    this.radioGroup = "",
    this.aboutModelObj,
  });

  TextEditingController? genderInputController;

  TextEditingController? ageInputController;

  TextEditingController? heightInputController;

  TextEditingController? weightInputController;

  AboutModel? aboutModelObj;
  
  String radioGroup;

  @override
  List<Object?> get props => [
        genderInputController,
        ageInputController,
        heightInputController,
        weightInputController,
        radioGroup,
        aboutModelObj,
      ];

  AboutState copyWith({
    TextEditingController? genderInputController,
    TextEditingController? ageInputController,
    TextEditingController? heightInputController,
    TextEditingController? weightInputController,
    String? radioGroup,
    AboutModel? aboutModelObj,
  }) {
    return AboutState(
      genderInputController:
          genderInputController ?? this.genderInputController,
      ageInputController: ageInputController ?? this.ageInputController,
      heightInputController: heightInputController ?? this.heightInputController,
      weightInputController: weightInputController ?? this.weightInputController,
      radioGroup: radioGroup ?? this.radioGroup,
      aboutModelObj: aboutModelObj ?? this.aboutModelObj,
    );
  }
}
