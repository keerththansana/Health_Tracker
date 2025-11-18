part of 'deatils_bloc.dart';

/// Represents the state of Deatils in the application.
// ignore_for_file: must_be_immutable
class DeatilsState extends Equatable {
  DeatilsState({this.deatilsModelobj});

  DeatilsModel? deatilsModelobj;

  @override
  List<Object?> get props => [deatilsModelobj];

  DeatilsState copyWith({DeatilsModel? deatilsModelobj}) {
    return DeatilsState(
      deatilsModelobj: deatilsModelobj ?? this.deatilsModelobj,
    );
  }
}
