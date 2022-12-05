import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app1/shared/cubit/cubit.dart';
import 'package:news_app1/shared/cubit/status.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var Cubit = NewsCubit.get(context);
        return Scaffold(
          body: Cubit.Screens[Cubit.curntindex],
          // ignore: prefer_const_literals_to_create_immutables
          bottomNavigationBar: CurvedNavigationBar(
            items: Cubit.items,
            index: Cubit.curntindex,
            onTap: (index) {
              Cubit.ChingBottom(index);
            },
            animationCurve: Curves.easeInOut,
            color: Colors.white,
            backgroundColor: Colors.blue,
            buttonBackgroundColor: Colors.blueAccent,
            animationDuration: const Duration(milliseconds: 600),
          ),
        );
      },
    );
  }
}
