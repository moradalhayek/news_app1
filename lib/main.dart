import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app1/layout/news_layout.dart';
import 'package:news_app1/shared/cubit/cubit.dart';
import 'package:news_app1/shared/cubit/status.dart';
import 'package:news_app1/shared/network/remote/dio_helper.dart';
import 'package:news_app1/shared/styles/const.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
    Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  MultiBlocProvider(
      
      providers: [
        BlocProvider(create: (context)=>NewsCubit()..getHealth()..getSports()..getTechnology())
      ],
     child: BlocConsumer<NewsCubit,NewsStates>(
        listener:(context, state) {
          
        } ,
        builder: (context, state) {
        return   const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NewsLayout()
       ); 
        },)
      
    );
     
  }
}
