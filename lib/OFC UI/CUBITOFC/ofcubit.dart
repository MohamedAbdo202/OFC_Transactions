import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ofcstats.dart';

class OFCCubit extends Cubit<OFCStates> {
  OFCCubit() : super(OFCInitialState());

  static OFCCubit get(context) => BlocProvider.of(context);

  IconData suffix=Icons.visibility_outlined;
  bool isPassword=true;
  void changePasswordVisibility()
  {
    isPassword=!isPassword;
    suffix=isPassword ? Icons.visibility_outlined:Icons.visibility_off;
    emit(OFCPasswordVisibility());
  }

  bool save=true;
  void SavePassword(){
    save = !save;

    emit(OFCSavePasswordVisibility());



  }

}