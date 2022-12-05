import 'package:flutter/material.dart';
import 'package:news_app1/modules/web_view/web_view.dart';

Widget builedItem(context, artecl) => InkWell(
  onTap: () {
      Navigator.push(context,
       MaterialPageRoute(builder:(context)=>WebView_Screen(url: artecl['url']) ));
  },
  child:   Padding(
  
        padding: const EdgeInsets.all(6.0),
  
        child: Card(
  
          clipBehavior: Clip.antiAliasWithSaveLayer,
  
          elevation: 10,
  
          shadowColor: Colors.black,
  
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  
          child: Column(
  
            crossAxisAlignment: CrossAxisAlignment.start,
  
            children: [
  
              Container(
  
                height: 350,
  
                width: double.infinity,
  
                child: Image(
  
                  image: NetworkImage(
  
                    '${artecl['urlToImage'] ?? 'https://arwordshub.com/wp-content/uploads/2021/04/600-473x1024.jpg'}',
  
                  ),
  
                  fit: BoxFit.cover,
  
                ),
  
              ),
  
              Padding(
  
                padding: const EdgeInsets.all(5),
  
                child: Text(
  
                  '${artecl['title']}',
  
                  style: Theme.of(context).textTheme.bodyText1,
  
                  maxLines: 4,
  
                  overflow: TextOverflow.ellipsis,
  
                ),
  
              ),
  
              Padding(
  
                padding: const EdgeInsets.all(5),
  
                child: Text(
  
                  '${artecl['description']}',
  
                  style: Theme.of(context).textTheme.caption,
  
                  maxLines: 3,
  
                  overflow: TextOverflow.ellipsis,
  
                ),
  
              )
  
            ],
  
          ),
  
        ),
  
      ),
);
Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(start: 2),
      child: Container(
        height: 1,
        width: 1,
        color: Colors.grey,
      ),
    );
