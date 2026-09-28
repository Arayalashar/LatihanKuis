import 'package:flutter/material.dart';
import '../models/bookModels.dart';
import 'detail.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(book: bookList[index]),
                ),
              );
            },
            child: ListTile(
              title: Text(bookList[index].title),
              subtitle: Text(bookList[index].author),
              leading: Image.network(bookList[index].imageUrl),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        });
  }
}
