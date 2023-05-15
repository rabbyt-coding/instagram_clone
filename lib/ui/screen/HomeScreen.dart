import 'package:flutter/material.dart';
import 'package:instagram_clone/model/Post.dart';
import 'package:instagram_clone/store/Post.dart';
import 'package:instagram_clone/store/Story.dart';
import 'package:instagram_clone/store/User.dart';
import 'package:instagram_clone/ui/components/BottomNavigation.dart';
import 'package:instagram_clone/ui/components/Post.dart';
import 'package:instagram_clone/ui/components/StoryList.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  initState() {
    super.initState();

    Future.microtask(() {
      Provider.of<UserProvider>(context, listen: false).loadUsers();
      Provider.of<StoryProvider>(context, listen: false).loadStories();
      Provider.of<PostProvider>(context, listen: false).loadPosts();
      Provider.of<UserProvider>(context, listen: false).loadLoggeduser();
      Provider.of<UserProvider>(context, listen: false).loadUserProfile();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('instagram clone',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            )
          ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border_outlined, color: Colors.black),
            onPressed: null
            ),
          IconButton(
            icon: Icon(Icons.send_outlined, color: Colors.black),
            onPressed: null
            ),

        ]
        ),
        bottomNavigationBar: BottomNavigation(),
        body: ListView(children: [
          Consumer<UserProvider>(
            builder: (context, userProvider, child) {
              if (userProvider.loader) {
                return Center(child: CircularProgressIndicator());
              } else if (userProvider.users == null) {
                return Center(child: Text('no data available'));
              }
              return StoryList();
            }
            ),
          ..._buildPostList(),
          // story

        ])
      
    );
  }

  _buildPostList() {
    final postProvider = context.watch<PostProvider>();

    if (postProvider.loader) {
      return [Center(child: CircularProgressIndicator())];
    } else if (postProvider.posts == null) {
      return [Center(child: Text('No data available'))];
    }
    return postProvider.posts!.map(
      (Post post) => PostContainer( post: post)
      ).toList();

  }
}
