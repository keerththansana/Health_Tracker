import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/welcome_model.dart';
part 'welcome_event.dart';
part 'welcome_state.dart';

/// A Bloc that manages the state of the Welcome screen based on the events dispatched to it.
class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc(WelcomeState initialState) : super(initialState) {
    // Handle the initial event
    on<WelcomeInitialEvent>(_onInitialize);
  }

  /// Handles the initialization of the Welcome screen state.
   _onInitialize(
    WelcomeInitialEvent event,
    Emitter<WelcomeState> emit,
  ) async {}
}
