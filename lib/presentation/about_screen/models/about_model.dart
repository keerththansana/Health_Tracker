import 'package:equatable/equatable.dart';
import 'core/app_export.dart';
import 'agecategories_item_model.dart';

/// This class defines the variables used in the [about_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class AboutModel extends Equatable {
  AboutModel({this.agecategoriesItemList = const []});

  List<AgecategoriesItemModel> agecategoriesItemList;

  AboutModel copyWith({List<AgecategoriesItemModel>? agecategoriesItemList}) {
    return AboutModel(
      agecategoriesItemList: agecategoriesItemList ?? this.agecategoriesItemList,
    );
  }

  @override
  List<Object?> get props => [agecategoriesItemList];
}

