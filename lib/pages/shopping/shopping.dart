import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  Widget headerBuild(){
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          //=========================================== Back Button
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.grey[100],
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0,1),
              )],
              borderRadius: BorderRadius.circular(15.0),
            ),
              child: IconButton(
                  icon: Icon(Icons.arrow_back_ios,color: Colors.red,),
                  onPressed: (){Navigator.of(context).pop();}
                  )
          ),
        ],
      ),
    );
  }

  var mypro=[
    {"pro_id":"1","pro_name":"مشاوي","pro_price":"100","pro_qty":"3","pro_image":"images/category/cat1.png"},
    {"pro_id":"2","pro_name":"مشاوي","pro_price":"200","pro_qty":"4","pro_image":"images/category/cat2.png"},
    {"pro_id":"3","pro_name":"مشاوي","pro_price":"300","pro_qty":"5","pro_image":"images/category/cat3.png"},
    {"pro_id":"4","pro_name":"مشاوي","pro_price":"400","pro_qty":"6","pro_image":"images/category/cat4.png"},
  ];

  void _showSheetMessage(context){
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        )
      ),
        context: context,
        builder:(BuildContext bc){
          return Container(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30.0,bottom: 30.0),
                      child: new Icon(Icons.done,color: Colors.red,size: 70.0,),
                    ),
                    new Text("شكرا لطلبك",
                      style: TextStyle(color: Colors.red,fontSize: 25.0,fontWeight: FontWeight.bold),),
                    new Text("يمكنك تتبع الطلبية من خلال الزر في الأسفل",
                      style: TextStyle(color: Colors.grey,fontSize: 16.0),),
                    Padding(padding: EdgeInsets.only(top: 50.0),
                      child: MaterialButton(
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          width: MediaQuery.of(context).size.width,
                          child: Text("تابع الطلبية",textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          decoration: BoxDecoration(
                              color: Colors.red,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        onPressed: (){

                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5.0),
                      child: MaterialButton(
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          width: MediaQuery.of(context).size.width,
                          child: Text("الانتقال الى المأكولات",textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black,fontSize: 20.0),),
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        onPressed: (){

                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60.0),
              child: ListView.builder(
                itemCount: mypro.length,
                  itemBuilder: (context,index){
                return SingleProduct(
                  pro_id: mypro[index]["pro_id"],
                  pro_name: mypro[index]["pro_name"],
                  pro_price: mypro[index]["pro_price"],
                  pro_qty: mypro[index]["pro_qty"],
                  pro_image: mypro[index]["pro_image"],
                );
              }
              ),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                height: 120.0,
                child:  headerBuild(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 220.0,
        child: Column(
          children: [
            Card(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        new Text("إجمالي المبلغ"),
                        Expanded(child: Text("")),
                        new Text("1000.0"),
                      ],
                    ),
                    Divider(color: Colors.black,),
                    Row(
                      children: [
                        new Text("دلفري"),
                        Expanded(child: Text("")),
                        new Text("1000.0"),
                      ],
                    ),
                    Divider(color: Colors.black,),
                    Row(
                      children: [
                        new Text("الإجمالي الكلي"),
                        Expanded(child: Text("")),
                        new Text("1000.0"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              alignment: Alignment.center,
              child:
                  GestureDetector(
                    onTap: (){},
                    child:
                        Text("إضافة الى السلة",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                  ),
              padding: EdgeInsets.only(left: 50.0,right: 30.0),
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),

            Container(
              alignment: Alignment.center,
              child:
              GestureDetector(
                onTap: (){
                  _showSheetMessage(context);
                },
                child:
                Text("تأكيد الطلبية",style: TextStyle(color: Colors.white,fontSize: 20.0),),
              ),
              padding: EdgeInsets.only(left: 50.0,right: 30.0),
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_price;
  final String pro_qty;
  final String pro_image;

  SingleProduct({this.pro_id, this.pro_name, this.pro_price, this.pro_qty, this.pro_image});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.cancel_outlined,
              color: Colors.red,
            ),
          ),
          Container(
            child: ListTile(
              title: Text(pro_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              subtitle: Text(pro_price),
              leading: Container(
                width: 50.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(pro_image),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              trailing: Container(
                width: 70.0 ,
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: FaIcon(FontAwesomeIcons.plus,color: Colors.white,size: 16,),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    Expanded(child: new Text(pro_qty,style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,)),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: FaIcon(FontAwesomeIcons.minus,color: Colors.white,size: 16,),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
