part of 'welcome_bloc.dart';

/// Abstract class for all events that can be dispatched for the Welcome screen.
abstract class WelcomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event dispatched when the Welcome screen is first created.
class WelcomeInitialEvent extends WelcomeEvent {}
