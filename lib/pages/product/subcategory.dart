import 'package:flutter/material.dart';
import 'package:food_app/pages/product/product.dart';

class SubCategory extends StatefulWidget {
  final String cat_id;
  final String cat_name;
  SubCategory({this.cat_id,this.cat_name});
  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  var myarr_subegory=[
    {"sub_id":"1","sub_name":"سمك مشوي","sub_count":"10","sub_image":"images/category/cat1.png"},
    {"sub_id":"2","sub_name":"دجاج مشوي","sub_count":"11","sub_image":"images/category/cat2.png"},
    {"sub_id":"3","sub_name":"شاورما فحم","sub_count":"12","sub_image":"images/category/cat3.png"},
    {"sub_id":"4","sub_name":"وجبات سريعة","sub_count":"13","sub_image":"images/category/cat4.png"},
    {"sub_id":"5","sub_name":"sub5","sub_count":"14","sub_image":"images/category/cat5.png"},
    {"sub_id":"6","sub_name":"sub6","sub_count":"15","sub_image":"images/category/cat6.png"},
    {"sub_id":"7","sub_name":"sub7","sub_count":"16","sub_image":"images/category/cat7.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cat_name,style: TextStyle(fontSize: 18,color: Colors.black),),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap:(){ Navigator.of(context).pop();},
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: ListView.builder(
          itemCount: myarr_subegory.length,
          itemBuilder:(BuildContext context, int index){
            return SingleSubCategory(
              sub_id: myarr_subegory[index]["sub_id"],
              sub_name: myarr_subegory[index]["sub_name"],
              sub_image: myarr_subegory[index]["sub_image"],
              sub_count: myarr_subegory[index]["sub_count"],
            );
          },
        ),
      ),
    );
  }
}



class SingleSubCategory extends StatelessWidget {
  final String sub_id;
  final String sub_name;
  final String sub_image;
  final String sub_count;

  SingleSubCategory({this.sub_id,this.sub_name,this.sub_image,this.sub_count});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>new Product()));
            },
            child: ListTile(
              leading:
                Container(
                  padding: EdgeInsets.all(10.0) ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.grey[100],
                  ),
                  child: Image.asset(sub_image),
                ),
                title: Text(sub_name,style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(sub_count),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
