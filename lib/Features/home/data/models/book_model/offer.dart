import 'package:bookly_app/Features/home/data/models/book_model/offer_list_price.dart';

class Offers {
  int? finskyOfferType;
  ListPrice? listPrice;
  ListPrice? retailPrice;

  Offers({this.finskyOfferType, this.listPrice, this.retailPrice});

  Offers.fromJson(Map<String, dynamic> json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'])
        : null;
    retailPrice = json['retailPrice'] != null
        ? ListPrice.fromJson(json['retailPrice'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['finskyOfferType'] = finskyOfferType;
    if (listPrice != null) {
      data['listPrice'] = listPrice!.toJson();
    }
    if (retailPrice != null) {
      data['retailPrice'] = retailPrice!.toJson();
    }
    return data;
  }
}