import 'package:bookly_app/Features/home/data/models/book_model/access_info.dart';
import 'package:bookly_app/Features/home/data/models/book_model/sale_info.dart';
import 'package:bookly_app/Features/home/data/models/book_model/search_info.dart';
import 'package:bookly_app/Features/home/data/models/book_model/volume_info.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';

class BookModel extends BookEntity {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
          bookId: id,
          image: volumeInfo?.imageLinks?.thumbnail ?? 'No Image Found',
          title: volumeInfo!.title,
          authorName: volumeInfo.authors?.first ?? 'No Author Found',
          price: 0.0,
          rating: volumeInfo.averageRating ?? 0.0,
        );

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json["kind"],
        id: json["id"],
        etag: json["etag"],
        selfLink: json["selfLink"],
        volumeInfo: json["volumeInfo"] == null
            ? null
            : VolumeInfo.fromJson(json["volumeInfo"]),
        saleInfo: json["saleInfo"] == null
            ? null
            : SaleInfo.fromJson(json["saleInfo"]),
        accessInfo: json["accessInfo"] == null
            ? null
            : AccessInfo.fromJson(json["accessInfo"]),
        searchInfo: json["searchInfo"] == null
            ? null
            : SearchInfo.fromJson(json["searchInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "etag": etag,
        "selfLink": selfLink,
        "volumeInfo": volumeInfo?.toJson(),
        "saleInfo": saleInfo?.toJson(),
        "accessInfo": accessInfo?.toJson(),
        "searchInfo": searchInfo?.toJson(),
      };
}
