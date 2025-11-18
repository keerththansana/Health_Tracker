part of 'welcome_bloc.dart';

/// Represents the state of the Welcome screen in the application.
class WelcomeState extends Equatable {
  final WelcomeModel? welcomeModelObj;

  const WelcomeState({this.welcomeModelObj});

  /// Creates a copy of the current state with updated values.
  WelcomeState copyWith({WelcomeModel? welcomeModelObj}) {
    return WelcomeState(
      welcomeModelObj: welcomeModelObj ?? this.welcomeModelObj,
    );
  }

  @override
  List<Object?> get props => [welcomeModelObj];
}
