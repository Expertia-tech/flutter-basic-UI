import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/book.dart';

class DetailPage extends StatelessWidget {
  final Book book;
  DetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: CustomScrollView(
        // sliver is a widget that provides some special affects
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: LayoutBuilder(builder: (context, constraints) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),

                    ),
                    color: Color(0xFFFFFFFF),
                  ),
                  //height: 70,
                  //height: constraints.maxHeight *0.10 ,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 250,
                        child: Text(
                          book.label,
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            book.ratingStar,
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            book.genre,
                            style: TextStyle(fontSize: 12, color: Colors.cyan),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ),
            automaticallyImplyLeading: false,
            pinned: true,
            //floating: true,
            backgroundColor: Colors.grey,
            // elevation: 0,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              // for the image
              background: Image.network(
                book.imageUrl,
                width: double.maxFinite,
                fit: BoxFit.fitWidth,
              ),
              //title: Text(book.label),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),

                  //height: 300,
                  color: Color(0xFFF5F5F5),
                  child: Text(
                    book.overview + book.overview,
                    style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  //height: actualHeight * 0.32,
                  height: 300,
                  //color: Color(0xFFF5F5F5),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: books.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 12),
                            height: constraints.maxHeight,
                            width: constraints.maxWidth * 0.30,
                            //color: Colors.teal,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: constraints.maxHeight * 0.70,
                                  width: constraints.maxWidth * 0.30,
                                  //color: Color(0xFFF5F5F5),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      books[index].imageUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    books[index].label,
                                    style: TextStyle(fontSize: 14),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    books[index].genre,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.cyan, fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Color(0xFFF5F5F5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
