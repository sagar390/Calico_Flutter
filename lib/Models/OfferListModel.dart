import 'dart:convert';

class OnlineBuyerIdOffer {
  OnlineBuyerIdOffer( {this.consumerId});
  OnlineBuyerIdOffer.fromJson(dynamic json) {
    consumerId = json['ConsumerId'];
  }
   int consumerId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ConsumerId'] = consumerId;
    return map;
  }




}


List<OfferListModelResponse> offerlistFromJson(String str) =>
    List<OfferListModelResponse>.from(json.decode(str).map((x) => OfferListModelResponse.fromJson(x)));


String offerlistToJson(List<OfferListModelResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class OfferListModelResponse

{
  OfferListModelResponse({this.advertiseId,
  this.advertiseName,
  this.advertiseDescription,
   this.prodAdvertiseImageUrl,});

OfferListModelResponse.fromJson(dynamic json) {
advertiseId = json['AdvertiseId'];
advertiseName = json['AdvertiseName'];
advertiseDescription = json['AdvertiseDescription'];
prodAdvertiseImageUrl = json['ProdAdvertiseImageUrl'];
}
  int advertiseId;
 String advertiseName;
  String advertiseDescription;
  String prodAdvertiseImageUrl;

Map<String, dynamic> toJson() {
  final map = <String, dynamic>{};
  map['AdvertiseId'] = advertiseId;
  map['AdvertiseName'] = advertiseName;
  map['AdvertiseDescription'] = advertiseDescription;
  map['ProdAdvertiseImageUrl'] = prodAdvertiseImageUrl;
  return map;
}




}
