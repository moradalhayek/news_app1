import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app1/shared/componants/componants.dart';
import 'package:news_app1/shared/cubit/cubit.dart';
import 'package:news_app1/shared/cubit/status.dart';

class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var list =NewsCubit.get(context).sports;
        return Scaffold(
          appBar: AppBar(
            // ignore: prefer_const_constructors
            title: Text(
              'Sports',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body:ConditionalBuilder(
        condition:list.isNotEmpty ,
        builder:(context) =>  ListView.separated(itemBuilder: (context,index)=>builedItem(context,list[index]),
        separatorBuilder: (context,index)=>Container(),
        itemCount:list.length) ,
        fallback:(context)=>const Center(child: CircularProgressIndicator()) ) ,
        );
      },
    );
  }
}
