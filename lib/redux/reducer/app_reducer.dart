import 'package:flutter_boilerplate/redux/reducer/status_reducer.dart';
import 'package:flutter_boilerplate/redux/state/app_state.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    status: statusReducer(state.status, action),
  );
}
