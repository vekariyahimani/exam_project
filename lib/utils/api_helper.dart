import 'dart:convert';

import 'package:exam_project/screen/get_api/modal/home_modal.dart';
import 'package:http/http.dart' as http;

class ApiHelper
{
  Future<Corona> getApiCalling()
  async {
    String link="https://corona-virus-world-and-india-data.p.rapidapi.com/api";
    Uri uri=Uri.parse(link);
    var response=await http.get(uri,headers: {
      "content-type":"application/octet-stream",
      "X-RapidAPI-Key":"66dd3b00eamsh972cf3ebab173f1p15dc02jsn6d5e29696c0e",
      "X-RapidAPI-Host":"corona-virus-world-and-india-data.p.rapidapi.com",

    });
    var json=jsonDecode(response.body);
    Corona c1=Corona.fromJson(json);
    return c1;

  }

}


