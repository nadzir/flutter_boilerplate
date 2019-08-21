class StatusState {
  bool isFirstLaunch;

  StatusState({
    this.isFirstLaunch,
  });

  StatusState copyWith({bool isFirstLaunch}) {
    return new StatusState(
      isFirstLaunch: isFirstLaunch ?? this.isFirstLaunch,
    );
  }
}
