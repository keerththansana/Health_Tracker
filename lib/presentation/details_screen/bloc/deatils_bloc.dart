import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/deatils_model.dart';
import '../models/detailsgrid_item_model.dart';
part 'deatils_event.dart';
part 'deatils_state.dart';

/// A bloc that manages the state of Deatils according to the event that is dispatched to it.
class DeatilsBloc extends Bloc<DeatilsEvent, DeatilsState> {
  DeatilsBloc(DeatilsState initialState) : super(initialState) {
    on<DeatilsInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
      DeatilsInitialEvent event, Emitter<DeatilsState> emit) async {
    emit(
      state.copyWith(
        deatilsModelobj: state.deatilsModelobj?.copyWith(
          detailsgridItemList: fillDetailsgridItemList(),
        ),
      ),
    );
  }

  List<DetailsgridItemModel> fillDetailsgridItemList() {
    return [
      DetailsgridItemModel(
          whatisyour: "What is your preferred weight to reduce?"),
      DetailsgridItemModel(whatisyour: "How many days do you plan to workout?"),
      DetailsgridItemModel(
          whatisyour: "How many hours can you spend in a day?"),
      DetailsgridItemModel(whatisyour: "How many days do you plan to workout?")
    ];
  }
}
