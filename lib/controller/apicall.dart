import 'dart:convert' as convert;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../core/staticfile.dart' show Staticfile;
import '../model/news.dart';

class Apicall{
  Future<news?>?getnewsdata() async{
//exception handling
    try {
      // q=apple
      // &from=2026-10-13&to=2026-10
      // -13&sortBy=popularity
      // &apiKey=8ce3843c57bd4b0eb71057f1325c4588
      var url = Uri.https(
          Staticfile.baseurl,
          Staticfile.path,
          {'q': 'apple'
            , 'sortBy': 'popularity'
            , 'apiKey': Staticfile.apikey});
      var response = await http.get(url);

      if(response.statusCode.toString().contains("20")) {
        //parse
        var jsonresponse = convert.jsonDecode(response.body);
        var newsdata = news.fromJson(jsonresponse);
        return newsdata;
      }else {
        //failure
      return null;
      }
    }catch(e){
      return null;
      }
    }
  }