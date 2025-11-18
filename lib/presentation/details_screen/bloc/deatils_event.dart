part of 'deatils_bloc.dart';

/// Abstract class for all events that can be dispatched from the Deatils widget.
/// Events must be immutable and implement the [Equatable] interface.
class DeatilsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Deatils widget is first created.
class DeatilsInitialEvent extends DeatilsEvent {
  @override
  List<Object?> get props => [];
}
