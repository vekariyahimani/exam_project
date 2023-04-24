import 'package:exam_project/screen/get_api/modal/home_modal.dart';
import 'package:exam_project/utils/api_helper.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{

  Future<Corona> getData()
  {
    ApiHelper a1=ApiHelper();
    var c1=a1.getApiCalling();
    return c1;
  }
}