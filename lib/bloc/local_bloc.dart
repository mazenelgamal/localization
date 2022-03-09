import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/locale.dart';

class Local_bloc extends Cubit<Local_bloc_state> {
  Local_bloc() : super(Local_bloc_intial_state());
  static Local_bloc get (context)=> BlocProvider.of(context);
  String language = 'ar' ;

  void english () { language = 'en'; emit(Local_bloc_en_state());}
  void arabic () { language = 'ar'; emit(Local_bloc_ar_state());}
}


abstract class Local_bloc_state {}
class Local_bloc_intial_state extends Local_bloc_state {}
class Local_bloc_en_state extends Local_bloc_state {}
class Local_bloc_ar_state extends Local_bloc_state {}


