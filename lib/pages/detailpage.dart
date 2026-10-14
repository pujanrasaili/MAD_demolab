import 'package:flutter/material.dart';
import 'dashboard.dart';
class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 55,),
            Stack(
              children: [
                Container(
                  height: size.height/4,
                  width: size.width,
                  child: Image.network(fit: BoxFit.cover,"https://media.gettyimages.com/id/479481344/photo/chile-v-argentina-"
                      "2015-copa-america-chile-final.jpg?s=2048x2048&w=gi&k=20&c=6eOsW"
                "YzbAQHZvR2Sk9fWpkM0csau0YYp1_m-HKJylMY=")
                ),
                Container(
                  height: size.height/4,
                  width: size.width,
                  color: Colors.black54,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon( Icons.arrow_back,color: Colors.white,size: 40,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon( Icons.arrow_back,color: Colors.white,size: 40,),
                ),
                Positioned(
                  right: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.share,color: Colors.white,size: 40,),
                  )
                ),
                Container(
                  height: size.height/4,
                  width: size.width,
                  child: Center(
                    child: Icon(Icons.play_circle_fill_rounded,color: Colors.white,size: 40,),
                  )
                )
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Happy Dashain Everyone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),maxLines: 2, overflow: TextOverflow.ellipsis,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Author Name"),
                    Text("02 02 2026")
                  ],
                )
              ]
            ),),

            Divider(),

                Row(
            children: [
        Text("Related Videos",style: TextStyle(fontSize: 18)
        )],
            ),
           dashboardState.verticallistitem(size,
            "title happy  pcps family skdalsjdajd",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYNBJaFUb3pMu0XkkBdNkmsaBuZoYsR78LNMLGEdLPig&s=10",
            "02 feb 2026",
            "PCPSNEWS"),
            dashboardState.verticallistitem(size,
            "title happy  pcps family skdalsjdajd",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYNBJaFUb3pMu0XkkBdNkmsaBuZoYsR78LNMLGEdLPig&s=10",
            "02 feb 2026",
            "PCPSNEWS"),
            dashboardState.verticallistitem(size,
            "title happy  pcps family skdalsjdajd",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYNBJaFUb3pMu0XkkBdNkmsaBuZoYsR78LNMLGEdLPig&s=10",
            "02 feb 2026",
            "PCPSNEWS"),
          ],),
      )

    );
  }
}