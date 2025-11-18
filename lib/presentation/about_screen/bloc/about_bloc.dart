import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'core/app_export.dart';
import 'models/about_model.dart';
import '../models/agecategories_item_model.dart';

part 'about_event.dart';
part 'about_state.dart';

/// A bloc that manages the state of an About according to the event that is dispatched to it.
class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc(AboutState initialState) : super(initialState) {
    on<AboutInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  Future<void> _onInitialize(AboutInitialEvent event, Emitter<AboutState> emit) async {
    emit(
      state.copyWith(
        genderInputController: TextEditingController(),
        ageInputController: TextEditingController(),
        heightInputController: TextEditingController(),
        weightInputController: TextEditingController(),
        radioGroup: "",
        aboutModelObj: state.aboutModelObj?.copyWith(
          agecategoriesItemList: fillAgecategoriesItemList(),
        ),
      ),
    );
  }

  void _changeRadioButton(ChangeRadioButtonEvent event, Emitter<AboutState> emit) {
    emit(
      state.copyWith(
        radioGroup: event.value,
      ),
    );
  }

  List<AgecategoriesItemModel> fillAgecategoriesItemList() {
    return [
      AgecategoriesItemModel(
        underEighteen: ImageConstant.imgEllipse2,
        underCounter: "Under 18",
        undercounter1: "Under 18",
      ),
      AgecategoriesItemModel(
        underEighteen: ImageConstant.imgEllipse2,
        underCounter: "18 - 40",
        undercounter1: "18 - 40",
      ),
      AgecategoriesItemModel(
        underCounter: "40 - 60",
        undercounter1: "40 - 60",
      ),
      AgecategoriesItemModel(
        underCounter: "Above 60",
        undercounter1: "Above 60",
      ),
    ];
  }
}
