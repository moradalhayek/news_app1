import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app1/modules/health/health.dart';
import 'package:news_app1/modules/sports/sports.dart';
import 'package:news_app1/modules/technology/technology.dart';
import 'package:news_app1/shared/cubit/status.dart';
import 'package:news_app1/shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates> {
   NewsCubit() : super(iniatialState());
  static NewsCubit get(context)=>BlocProvider.of(context);
 late int curntindex=0;
 void ChingBottom(int index){
     curntindex=index;
     emit(ChingBottomState());
 }
 List<Widget>items=[
  const Icon(Icons.health_and_safety),
   const Icon(Icons.sports),
   const Icon(Icons.mobile_friendly),
 ];
 List<Widget>Screens=[
  const Health(),
  const Sports(),
  const Technology()
 ];
 List <dynamic>health=[];
 void getHealth()
 
 {
  emit(GetHealthLoding());
  DioHelper.getData(path: 'v2/top-headlines',
   query: {
    'country':'SA',
    'category':'health',
    'apiKey':'372ac5c8751f4bb0a0624f15df043f98'
   }).then((value) {
    health=value.data['articles'];
    print(health);
    emit(GetHealthSucsess());
   }).catchError((onError){
  emit(GetHealthError());
  print(onError.toString());
   });
 }
 List <dynamic>sports=[];
 void getSports()
 
 {
  emit(GetSportsLoding());
  DioHelper.getData(path: 'v2/top-headlines',
   query: {
    'country':'SA',
    'category':'sports',
    'apiKey':'372ac5c8751f4bb0a0624f15df043f98'
   }).then((value) {
    sports=value.data['articles'];
    print(sports);
    emit(GetSportsSucsess());
   }).catchError((onError){
  emit(GetSportsError());
  print(onError.toString());
   });
 }
 List <dynamic>technology=[];
 void getTechnology()
 
 {
  emit(GetTechnologyLoding());
  DioHelper.getData(path: 'v2/top-headlines',
   query: {
    'country':'SA',
    'category':'technology',
    'apiKey':'372ac5c8751f4bb0a0624f15df043f98'
   }).then((value) {
    technology=value.data['articles'];
    print(technology);
    emit(GetTechnolongySucsess());
   }).catchError((onError){
  emit(GetTecnologyError());
  print(onError.toString());
   });
 }

}