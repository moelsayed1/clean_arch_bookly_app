import 'package:bookly_app/Features/home/data/models/book_model/offer_list_price.dart';

class Offer {
  final int? finskyOfferType;
  final OfferListPrice? listPrice;
  final OfferListPrice? retailPrice;

  Offer({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
    finskyOfferType: json["finskyOfferType"],
    listPrice: json["listPrice"] == null ? null : OfferListPrice.fromJson(json["listPrice"]),
    retailPrice: json["retailPrice"] == null ? null : OfferListPrice.fromJson(json["retailPrice"]),
  );

  Map<String, dynamic> toJson() => {
    "finskyOfferType": finskyOfferType,
    "listPrice": listPrice?.toJson(),
    "retailPrice": retailPrice?.toJson(),
  };
}