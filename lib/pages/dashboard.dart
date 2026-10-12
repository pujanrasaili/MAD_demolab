import 'package:xyzseasonsir/pages/detailpage.dart';
import 'package:flutter/material.dart';

import 'detailpage.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => dashboardState();
}

class dashboardState extends State<dashboard> {

  horizontallistitem(size, String title,url, date){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => detailpage(),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: size.height/4.5,
            width: size.width/1.4,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(20)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(fit: BoxFit.cover,
                  url),
            ),
          ),
          Container(
            height: size.height/4.5,
            width: size.width/1.4,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(20)
            ),
          ),
          Positioned(
            bottom: 45,
            left: 30,
            child: Container(
              width: size.width/2,
              child: Text(title,
                overflow: TextOverflow.ellipsis,maxLines: 2,
                style: TextStyle(color: Colors.white,fontSize: 16),),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 30,
            child: Text(date,
              style: TextStyle(color: Colors.white,fontSize: 16),),
          ),
          Positioned(
              bottom: 30,right: 30,
              child: Icon(Icons.play_circle_fill_rounded,color:
              Colors.white,size: 40,))
        ],
      ),
    );
  }

  static verticallistitem(size, String title, url, date, source){
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(fit: BoxFit.cover,
                    url),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.all(15),
              child: Center(
                child: Icon(Icons.play_circle_fill_rounded,
                  size: 50,color: Colors.white,),
              ),
            )
          ],
        ),
        Container(
          height: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width/2,
                child: Text(title
                  ,maxLines: 2,overflow: TextOverflow.ellipsis,),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10,
                        top: 8,bottom: 8),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(source,style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(width: 15,),
                  Text(date,)
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //horizontal scroll items
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [

                horizontallistitem(size,
                    "Muchas Gracia",
                    "https://media.gettyimages.com/id/479481344/photo/chile-v-argentina-"
                        "2015-copa-america-chile-final.jpg?s=2048x2048&w=gi&k=20&c=6eOsW"
                        "YzbAQHZvR2Sk9fWpkM0csau0YYp1_m-HKJylMY=",
                    "03 feb 2026"),
                horizontallistitem(size,
                    "Muchas Gracia",
                    "https://media.gettyimages.com/id/479481344/photo/chile-v-argentina-"
                        "2015-copa-america-chile-final.jpg?s=2048x2048&w=gi&k=20&c=6eOsW"
                        "YzbAQHZvR2Sk9fWpkM0csau0YYp1_m-HKJylMY=",
                    "04 feb 2026"),
                horizontallistitem(size,
                    "Muchas Gracia",
                    "https://media.gettyimages.com/id/479481344/photo/chile-v-argentina-"
                        "2015-copa-america-chile-final.jpg?s=2048x2048&w=gi&k=20&c=6eOsW"
                        "YzbAQHZvR2Sk9fWpkM0csau0YYp1_m-HKJylMY=",
                    "05 feb 2026"),
                horizontallistitem(size,
                    "Muchas Gracia",
                    "https://media.gettyimages.com/id/479481344/photo/chile-v-argentina-"
                        "2015-copa-america-chile-final.jpg?s=2048x2048&w=gi&k=20&c=6eOsW"
                        "YzbAQHZvR2Sk9fWpkM0csau0YYp1_m-HKJylMY=",
                    "06 feb 2026"),
              ],
            ),
          ),

          //vertical scroll items
          Container(
            height: size.height/1.6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticallistitem(size,
                      " happy dashain pcps family skdalsjdajd",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYNBJaFUb3pMu0XkkBdNkmsaBuZoYsR78LNMLGEdLPig&s=10",
                      "02 feb 2026",
                      "PCPSNEWS"),
                  verticallistitem(size,
                      "title  dashain pcps family skdalsjdajd",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYNBJaFUb3pMu0XkkBdNkmsaBuZoYsR78LNMLGEdLPig&s=10",
                      "02 feb 2026",
                      "PCPSNEWS"),
                  verticallistitem(size,
                      "title happy  pcps family skdalsjdajd",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYNBJaFUb3pMu0XkkBdNkmsaBuZoYsR78LNMLGEdLPig&s=10",
                      "02 feb 2026",
                      "PCPSNEWS"),
                  verticallistitem(size,
                      "title happy dashain family ",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYNBJaFUb3pMu0XkkBdNkmsaBuZoYsR78LNMLGEdLPig&s=10",
                      "02 feb 2026",
                      "PCPSNEWS"),
                  verticallistitem(size,
                      "title happy",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYNBJaFUb3pMu0XkkBdNkmsaBuZoYsR78LNMLGEdLPig&s=10",
                      "02 feb 2026",
                      "PCPSNEWS"),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}