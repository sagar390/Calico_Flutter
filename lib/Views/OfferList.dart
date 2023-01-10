import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/TodoController.dart';
import '../Models/OfferListModel.dart';


class OfferList  extends StatefulWidget {


  @override
  State<OfferList> createState() => _OfferListState();
}

class _OfferListState extends State<OfferList> {



  @override
  void initState() {
  //  fetchOffer();
    super.initState();


  }
  
 /* void fetchOffer() async
  
  {
    var consumer = OnlineBuyerIdOffer( consumerId: 1);
    var offerdata = await BaseApiClient().getOfferList('/GetProductAdvertise', consumer);

    if(offerdata == null) return;
    debugPrint("offeris !! "+offerdata.toString());
  }
*/
  PageController pageController = PageController(viewportFraction: 0.85);
  final TodoController _controller = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: PageView.builder(
        controller: pageController,
          itemCount: _controller.offerlistList.length ,

          itemBuilder: (context,position)
    {
      return _buildPageItem(position);

     }),
      );

  }



  Widget _buildPageItem(int Position)
  {
    return Container(
      height: 140,
      margin: EdgeInsets.only(left: 0,right: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            image: DecorationImage(
                image: NetworkImage(_controller.offerlistList[Position].prodAdvertiseImageUrl)

      )
      ),
    );
  }
}
