import "dart:convert" as convert;

import "package:demopcpsseca/model/news.dart";
import "package:flutter/foundation.dart";
import "package:http/http.dart" as http;
import '../core/Staticfile.dart';
class Apicall {
  Future<news?>? getnewsdata() async {
    //exception handling
    try{
      // ?q=apple
      // &sortBy=popularity
      // &apiKey=a25a0c0b883c4f389ff5c23da0f9dfea
      var url = Uri.https(
        Staticfile.baseUrl,
        Staticfile.path,
        {'q': 'apple',
          'sortBy': 'popularity',
        'apiKey': Staticfile.apikey});
      var response = await http.get(url);
      if(response.statusCode.toString().contains("20")){
        //parse
        var jsonresponse = convert.jsonDecode(response.body);
        var newsdata = news.fromJson(jsonresponse);
        return newsdata;
      }else{
        //failure
        return null;
      }
    }catch(e){
      return null;
      }
  }
}