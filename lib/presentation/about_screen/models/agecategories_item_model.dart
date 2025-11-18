import 'package:equatable/equatable.dart';
import '../../core/app_export.dart';

/// This class is used in the [agecategories_item_widget] screen.
// ignore_for_file: must_be_immutable
class AgecategoriesItemModel extends Equatable {
  AgecategoriesItemModel({
    this.underEighteen,
    this.underCounter,
    this.undercounter1,
    this.id,
  }) {
    underEighteen = underEighteen ?? ImageConstant.imgEllipse;
    underCounter = underCounter ?? "Under 18";
    undercounter1 = undercounter1 ?? "Under 18";
    id = id ?? "";
  }

  String? underEighteen;
  String? underCounter;
  String? undercounter1;
  String? id;

  AgecategoriesItemModel copyWith({
    String? underEighteen,
    String? underCounter,
    String? undercounter1,
    String? id,
  }) {
    return AgecategoriesItemModel(
      underEighteen: underEighteen ?? this.underEighteen,
      underCounter: underCounter ?? this.underCounter,
      undercounter1: undercounter1 ?? this.undercounter1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [underEighteen, underCounter, undercounter1, id];
}
