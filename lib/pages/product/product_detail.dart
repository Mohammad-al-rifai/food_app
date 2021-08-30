import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/pages/shopping/shopping.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
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

          Expanded(child: Text("")),
          //=========================================== Shopping Button
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
                  icon: Icon(Icons.shopping_cart,color: Colors.red,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>new Shopping()));
                  }
                  ),
          )
        ],
      ),
    );
  }

  Widget imageProduct(){
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.grey[100],
          spreadRadius: 1,
          blurRadius: 0,
          offset: Offset(0,1),
        )],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
        ),
      ),
      child: Column(
        children: [
          Image.asset("images/product/pro1.jpg"),
          Padding(padding: EdgeInsets.only(top: 30.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //=========================================== Plus Button
              Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: [BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0,1),
                    )],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: IconButton(icon: FaIcon(FontAwesomeIcons.plus,color: Colors.white,), onPressed: (){})
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                  child: Text("1",style: TextStyle(color: Colors.black,fontSize: 25.0),)),
              //=========================================== Minus Button
              Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: [BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0,1),
                    )],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: IconButton(icon: FaIcon(FontAwesomeIcons.minus,color: Colors.white,), onPressed: (){})
              )
            ],
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            ListView(
            children: [
              imageProduct(),
              Container(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("سمك مشوي",style: TextStyle(fontSize: 30.0),),
                    new Row(
                      children: [
                        new Icon(Icons.favorite,color: Colors.red,),
                        new Text("5",style: TextStyle(fontSize: 16.0),),
                        new Expanded(child: Text(""),),
                        new Icon(Icons.star,color: Colors.orange,),
                        new Text("5 review",style: TextStyle(fontSize: 16.0),),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15.0)),
                    Text(" سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي"
                        " سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي "
                        "سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي"
                        " سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي "
                        "سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي "
                        "سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي سمك مشوي",
                      style: TextStyle(fontSize: 16.0,color: Colors.grey),),
                  ],
                ),
              ),
            ],
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
        child: Row(
          children: [
            new Text("1500",
              style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold),
            ),
            Expanded(child: Text("")),
            Container(
              decoration: BoxDecoration(
                color: Colors.red[200],
                boxShadow: [BoxShadow(
                  color: Colors.grey[100],
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0,3),
                )],
                borderRadius: BorderRadius.circular(40.0),
              ),
              margin: EdgeInsets.all(7.0),
              padding: EdgeInsets.only(left: 10.0,right: 10.0),
              child: Text("إضافة الى السلة",style: TextStyle(color: Colors.white,fontSize: 20.0),),),
            Container(
              child: Icon(Icons.shopping_basket_rounded,color: Colors.white,),
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 50.0,right: 30.0),
        height: 75.0,
        decoration: BoxDecoration(
         // color: Colors.red[300],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.red,
              Colors.red[300],
              Colors.red[300],
              Colors.red,
            ]
          ),
          boxShadow: [BoxShadow(
            color: Colors.grey[100],
            spreadRadius: 7,
            blurRadius: 4,
            offset: Offset(0,3),
          )],
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
    );
  }
}
