import 'package:datarequest/Models/Todomodel.dart';
import 'package:datarequest/Services/Remoteservices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../Models/OfferListModel.dart';

class TodoController extends GetxController {
  var isLoading = true.obs;
  var todoList = List<Todo>().obs;
  var offerlistList = List<OfferListModelResponse>().obs;


  @override
  void onInit() {
  //  fetchfinaltodo();
    fetchfinalOfferList();
    super.onInit();
  }

  void fetchfinaltodo() async {
    isLoading(true);
    try {
      var todos = await Dataservices.getTodo();
      if (todos != null) {
        todoList.value = todos;
      }
    } finally {
      isLoading(false);
    }
  }

  void fetchfinalOfferList() async {
    isLoading(true);
    try {


      var todos_offer = await Dataservices.getOfferList('GetProductAdvertise', 12);

      debugPrint("offeris !! "+todos_offer.toString());

      if (todos_offer != null) {
        offerlistList.value = todos_offer;
        debugPrint("offeris len  !! "+  offerlistList.value.length.toString());

      }
    } finally {
      isLoading(false);
    }
  }
}
