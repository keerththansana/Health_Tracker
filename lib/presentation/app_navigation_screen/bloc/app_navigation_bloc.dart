import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/app_navigation_model.dart';

part 'app_navigation_event.dart';
part 'app_navigation_state.dart';

/// A bloc that manages the state of AppNavigation according to the event dispatched to it.
class AppNavigationBloc extends Bloc<AppNavigationEvent, AppNavigationState> {
  AppNavigationBloc(AppNavigationState initialState) : super(initialState) {
    on<AppNavigationInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    AppNavigationInitialEvent event,
    Emitter<AppNavigationState> emit,
  ) async {
    // Perform initialization logic here, if needed.
  }
}
