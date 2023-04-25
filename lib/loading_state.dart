class LoadingState {
  bool isLoading;
  String msg;

  LoadingState({
    required this.isLoading,
    required this.msg,
  });

  LoadingState.fromJson(Map<String, dynamic> json)
      : isLoading = json['isLoading'],
        msg = json['msg'];
  Map<String, dynamic> toJson() {
    return {
      "isLoading": this.isLoading,
      "msg": this.msg,
    };
  }
}
