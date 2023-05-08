import 'package:flutter/material.dart';
import 'package:djr_delivery_boy/localization/app_localization.dart';

String getTranslated(String key, BuildContext context) {
  String _text = key;
  try{
    _text = AppLocalization.of(context).translate(key);
  }catch (error){
    print('not localized --- $error');
  }
  return _text;
}