// class MemesModel {
//   bool? success;
//   Data? data;
//
//   MemesModel({this.success, this.data});
//
//   MemesModel.fromJson(Map<String, dynamic> json) {
//     success = json['success'];
//     data = json['data'] != null ? Data.fromJson(json['data']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['success'] = success;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }
//
// class Data {
//   List<Memes>? memes;
//
//   Data({this.memes});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['memes'] != null) {
//       memes = <Memes>[];
//       json['memes'].forEach((v) {
//         memes!.add(Memes.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (memes != null) {
//       data['memes'] = memes!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Memes {
//   String? id;
//   String? name;
//   String? url;
//   int? width;
//   int? height;
//   int? boxCount;
//   int? captions;
//
//   Memes(
//       {this.id,
//       this.name,
//       this.url,
//       this.width,
//       this.height,
//       this.boxCount,
//       this.captions});
//
//   Memes.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     url = json['url'];
//     width = json['width'];
//     height = json['height'];
//     boxCount = json['box_count'];
//     captions = json['captions'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     data['url'] = url;
//     data['width'] = width;
//     data['height'] = height;
//     data['box_count'] = boxCount;
//     data['captions'] = captions;
//     return data;
//   }
// }
// To parse this JSON data, do
//
//     final model = modelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Model modelFromJson(String str) => Model.fromJson(json.decode(str));

String modelToJson(Model data) => json.encode(data.toJson());

class Model {
  final bool success;
  final Data data;

  Model({
    required this.success,
    required this.data,
  });

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    success: json["success"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data.toJson(),
  };
}

class Data {
  final List<Meme> memes;

  Data({
    required this.memes,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    memes: List<Meme>.from(json["memes"].map((x) => Meme.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "memes": List<dynamic>.from(memes.map((x) => x.toJson())),
  };
}

class Meme {
  final String id;
  final String name;
  final String url;
  final int width;
  final int height;
  final int boxCount;
  final int captions;

  Meme({
    required this.id,
    required this.name,
    required this.url,
    required this.width,
    required this.height,
    required this.boxCount,
    required this.captions,
  });

  factory Meme.fromJson(Map<String, dynamic> json) => Meme(
    id: json["id"],
    name: json["name"],
    url: json["url"],
    width: json["width"],
    height: json["height"],
    boxCount: json["box_count"],
    captions: json["captions"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "url": url,
    "width": width,
    "height": height,
    "box_count": boxCount,
    "captions": captions,
  };
}
