import 'package:equatable/equatable.dart';
import 'detailsgrid_item_model.dart';

/// This class defines the variables used in the [deatils_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class DeatilsModel extends Equatable {
  DeatilsModel({this.detailsgridItemList = const []});

  List<DetailsgridItemModel> detailsgridItemList;

  DeatilsModel copyWith({List<DetailsgridItemModel>? detailsgridItemList}) {
    return DeatilsModel(
      detailsgridItemList: detailsgridItemList ?? this.detailsgridItemList,
    );
  }

  @override
  List<Object?> get props => [detailsgridItemList];
}
