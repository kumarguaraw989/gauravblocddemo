class HomePageModel {
  ReqStatus? reqStatus;
  Result? result;
  HomePageModel({this.reqStatus, this.result});
  HomePageModel.fromJson(Map<String, dynamic> json) {
    reqStatus = json['ReqStatus'] != null
        ? ReqStatus.fromJson(json['ReqStatus'])
        : null;
    result = json['Result'] != null ? Result.fromJson(json['Result']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (reqStatus != null) {
      data['ReqStatus'] = reqStatus!.toJson();
    }
    if (result != null) {
      data['Result'] = result!.toJson();
    }
    return data;
  }
}

class ReqStatus {
  bool? status;
  String? message;

  ReqStatus({this.status, this.message});

  ReqStatus.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Status'] = status;
    data['Message'] = message;
    return data;
  }
}

class Result {
  String? expires;
  String? token;
  String? userId;

  Result({this.expires, this.token, this.userId});

  Result.fromJson(Map<String, dynamic> json) {
    expires = json['expires'];
    token = json['token'];
    userId = json['UserId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['expires'] = expires;
    data['token'] = token;
    data['UserId'] = userId;
    return data;
  }
}
