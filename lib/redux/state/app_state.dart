import 'package:flutter_boilerplate/redux/state/status_state.dart';

class AppState {
  StatusState status;

  AppState({
    this.status,
  }) {
    this.status = this.status ?? StatusState();
  }

  AppState copyWith({
    StatusState status,
  }) {
    return new AppState(
      status: status ?? this.status,
    );
  }
}
