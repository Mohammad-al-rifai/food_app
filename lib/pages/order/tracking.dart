import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Tracking extends StatefulWidget {
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {


  Widget getInfoDelivery(){
    return Container(
      child: ListTile(
        title: Text("الاسم",),
        subtitle: Text("محمد الرفاعي",
          style: TextStyle(color: Colors.black,  fontSize: 20.0,fontWeight: FontWeight.bold),),
        leading: Container(
          width: 75.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage("images/product/pro3.jpg")
            ),
          ),
        ),
        trailing: Container(
          width: 50.0,
          child: new Column(
            children: [
              Row(
                children: [
                  new Icon(Icons.star_border,color: Colors.red,),
                  new Text("4.0",style: TextStyle(color: Colors.red),),
                ],
              ),
              new Text("14444",style: TextStyle(color: Colors.grey),),
            ],
          ),
        ),
      ),
    );
  }

  Widget getTimeLine(){
    double height = 70.0;
    return Container(
      margin: EdgeInsets.only(top: 10.0,bottom: 80.0),
      color: Colors.grey[50],
      child: Column(
        children: [
          new Container(
            height: height,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1.0),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    new Text("تأكيد الطلبية",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
                    new Icon(Icons.restaurant_menu,color: Colors.red,),
                  ],
                ),
              ),
            ),
          ),

          new Container(
            height: height,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1.0),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    new Text("تجهيز الطلبية",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
                    new Icon(Icons.restaurant_menu,color: Colors.red,),
                  ],
                ),
              ),
            ),
          ),

          new Container(
            height: height,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1.0),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    new Text("تم تجهيز الطلبية في المطعم",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
                    Expanded(child: Text(""),),
                    new Icon(Icons.restaurant_menu,color: Colors.red,),
                  ],
                ),
              ),
            ),
          ),

          new Container(
            height: height,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1.0),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    new Text("الدليفري استلم الطلبية",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
                    Expanded(child: Text(""),),
                    new Icon(Icons.restaurant_menu,color: Colors.red,),
                  ],
                ),
              ),
            ),
          ),
          new Container(
            height: height,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1.0),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    new Text("الدليفري قريب من المكان",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
                    Expanded(child: Text(""),),
                    new Icon(Icons.restaurant_menu,color: Colors.red,),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("تتبع الطلبية",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: (){
          Navigator.of(context).pop();
        },),
        actions: [
              InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    new Text("محادثة",style: TextStyle(color: Colors.red,fontSize: 20.0),),
                    new FaIcon(FontAwesomeIcons.whatsapp,color: Colors.red,)
                  ],
                ),
              ),
        ],
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 30.0)),
          new Text("الوقت المقدر لاستلام الطلبية",
            style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
          new Text(
            "05:30:00",
            style: TextStyle(color: Colors.red, fontSize: 25.0,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.all(15.0),child: Divider(color: Colors.grey[200],),),
          getInfoDelivery(),
          getTimeLine(),
        ],
      ),
      bottomNavigationBar: Container(
        child: MaterialButton(
          onPressed: (){},
          child: new Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(5.0),
            child: new Text("إلغاء الطلبية",
              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
