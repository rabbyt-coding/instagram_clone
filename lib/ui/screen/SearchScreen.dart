import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/components/BottomNavigation.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Container(
              margin: EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(18)),
              child: TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      hintText: 'Search',
                      fillColor: Colors.grey,
                      prefixIcon: Icon(Icons.search))),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(),
            )),
        bottomNavigationBar: BottomNavigation(),
        body: GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.grey[300],
                child: Image.network(
                  'https://picsum.photos/200/300',
                fit: BoxFit.cover
                  ),
                );
            }));
  }
}
