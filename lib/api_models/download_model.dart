// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'dart:convert';

List<Download> DownloadFromJson(String str) =>
    List<Download>.from(json.decode(str).map((x) => Download.fromJson(x)));
String DownloadToJson(List<Download> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Download {
  String? backdrop_path;
  String? id;

  Download({this.backdrop_path, this.id});

  factory Download.fromJson(Map<String, dynamic> json) => Download(
        backdrop_path: json["backdrop_path"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['avatar'] = this.backdrop_path;
    data['id'] = this.id;
    return data;
  }
}
