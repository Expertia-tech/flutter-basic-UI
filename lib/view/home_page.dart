import 'package:bookshelf/models/book.dart';
import 'package:bookshelf/view/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final actualHeight = height - MediaQuery.of(context).padding.top - 60;

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            elevation: 0,
            title: Text(
              'Hi John,',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Color(0xFFFFFFFF),
            actions: [
              Icon(
                CupertinoIcons.search,
                color: Colors.black,
                size: 24,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                CupertinoIcons.bell,
                color: Colors.black,
                size: 24,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 2,
              ),
              Container(
                height: actualHeight * 0.25,
                width: double.infinity,
                // image from url
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1533669955142-6a73332af4db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1274&q=80',
                    //'https://images.unsplash.com/photo-1527176930608-09cb256ab504?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1174&q=80',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 33,
              ),

              // MIDDLE BOX
              Container(
                height: actualHeight * 0.25,
                //color: Colors.green,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            Get.to(()=>DetailPage(book: books[index],),transition: Transition.leftToRight);
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 3),
                            height: constraints.maxHeight,
                            width: constraints.maxWidth * 0.93,
                            //color: Color(0xFFF5F5F5),
                            child: Stack(
                              //alignment: Alignment.bottomCenter,
                              children: [
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    width: constraints.maxWidth * 0.93,
                                    height: constraints.maxHeight * 0.85,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      color: Color(0xFFF5F5F5),
                                      child: Row(
                                        children: [
                                          Spacer(),
                                          Container(
                                            width: constraints.maxWidth * 0.54,
                                            height: constraints.maxHeight * 0.85,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    width:
                                                        constraints.maxWidth * 0.52,
                                                    child: Text(
                                                      books[index].label,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    )),
                                                Container(
                                                  width:
                                                      constraints.maxWidth * 0.52,
                                                  child: Text(
                                                    books[index].overview,
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 13),
                                                    maxLines: 4,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        books[index].ratingStar,
                                                        style:
                                                            TextStyle(fontSize: 10),
                                                      ),
                                                    ),
                                                    //SizedBox(width: 40,),
                                                    Container(
                                                      width: constraints.maxWidth *
                                                          0.35,
                                                      height:
                                                          constraints.maxHeight *
                                                              0.15,
                                                      //color: Colors.black12,
                                                      child: Align(
                                                        alignment:
                                                            Alignment.centerRight,
                                                        child: Text(
                                                          books[index].genre,
                                                          maxLines: 2,
                                                          style: TextStyle(
                                                            color: Colors.cyan,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 11,
                                  child: Container(
                                    //height: constraints.maxHeight * 0.95,
                                    //width: constraints.maxWidth * 0.40,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        books[index].imageUrl,
                                        height: constraints.maxHeight * 0.95,
                                        width: constraints.maxWidth * 0.33,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'You may also like',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(20),
              //   child: Container(
              //     height: actualHeight * 0.25,
              //     color: Color(0xFFF5F5F5),
              //   ),
              // ),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: actualHeight * 0.32,
                  //color: Color(0xFFF5F5F5),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: books.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                              Get.to(()=>DetailPage(book: books[index],),transition: Transition.leftToRight);
                            },
                            child: Container(
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
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),

              SizedBox(
                height: 40,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: actualHeight * 0.32,
                  //color: Color(0xFFF5F5F5),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: books.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                              Get.to(()=>DetailPage(book: books[index],),transition: Transition.leftToRight);
                            },
                            child: Container(
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
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
