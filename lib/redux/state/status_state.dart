class StatusState {
  int numOfTimesLaunch;

  StatusState({
    this.numOfTimesLaunch,
  });

  StatusState copyWith({int numOfTimesLaunch}) {
    return new StatusState(
        numOfTimesLaunch: numOfTimesLaunch ?? this.numOfTimesLaunch);
  }

  static StatusState fromJson(dynamic json) {
    if (json == null) return StatusState();
    return StatusState(numOfTimesLaunch: json["numOfTimesLaunch"] as int);
  }

  dynamic toJson() => {'numOfTimesLaunch': this.numOfTimesLaunch};
}
