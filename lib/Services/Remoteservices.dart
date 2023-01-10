import 'dart:convert';

import 'package:datarequest/Models/OfferListModel.dart';
import 'package:datarequest/Models/Todomodel.dart';
import 'package:http/http.dart' as http;

class Dataservices {
  static var client = http.Client();

  static Future<List<Todo>> getTodo() async {
    var response = await client.get('https://jsonplaceholder.typicode.com/todos');

    if (response.statusCode == 200) {
      var data = response.body;
      return todoFromJson(data);
    } else {
      return null;
    }
  }

  static  Future<dynamic> getOfferList(String api_endpts, dynamic object) async{

    var _headers = {
      'Content-type': 'application/json; charset=UTF-8',

    };

    var _payload =  json.encode(object);
    var response = await client.post('http://calicomilk.com/CalicoMilkMobileAPI/'+api_endpts, body : _payload,headers: _headers);

    if (response.statusCode == 200) {
      var data = response.body;
      return offerlistFromJson(data);
    } else {
      return null;
    }
  }
}
