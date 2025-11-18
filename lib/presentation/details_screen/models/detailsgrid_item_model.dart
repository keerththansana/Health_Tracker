import 'package:equatable/equatable.dart';

/// This class is used in the [detailsgrid_item_widget] screen.

// ignore_for_file: must_be_immutable
class DetailsgridItemModel extends Equatable {
  DetailsgridItemModel({String? whatisyour, String? id}){
       whatisyour = whatisyour ?? "What is your preferred weight to reduce?";
        id = id ?? "";
      }

  String? whatisyour;

  String? id;

  DetailsgridItemModel copyWith({
    String? whatisyour,
    String? id,
  }) {
    return DetailsgridItemModel(
      whatisyour: whatisyour ?? this.whatisyour,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [whatisyour, id];
}
