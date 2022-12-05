import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:news_app1/shared/componants/componants.dart';
import 'package:news_app1/shared/cubit/cubit.dart';
import 'package:news_app1/shared/cubit/status.dart';


class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    BlocConsumer<NewsCubit,NewsStates>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        var cubit=NewsCubit.get(context);
        var list=NewsCubit.get(context).health;
        return   Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('Health',

          // ignore: prefer_const_constructors
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          
        ),
        
        body:ConditionalBuilder(
        condition:list.isNotEmpty ,
        builder:(context) =>  ListView.separated(itemBuilder: (context,index)=>builedItem(context,list[index]),
        separatorBuilder: (context,index)=>Container(),
        itemCount:list.length) ,
        fallback:(context)=>const Center(child: CircularProgressIndicator()) )
      
        
      );
      },
      
     
    );
  }
}