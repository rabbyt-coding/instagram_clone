import 'package:flutter/material.dart';
import 'package:instagram_clone/model/Post.dart';
import 'package:instagram_clone/store/User.dart';
import 'package:provider/provider.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProvider = context.read<UserProvider>();
    final user = userProvider.getuserById(post.userId);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(3),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.orange,
                      Colors.purple,
                    ]),
                borderRadius: BorderRadius.circular(40)),
            child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: NetworkImage(user.imageUrl),
                          fit: BoxFit.cover,
                        ))))),
        Text(user.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            )),
        const Spacer(),
        const IconButton(
          onPressed: null,
          icon: Icon(Icons.more_vert),
        )
      ]),
      Container(
        height: 300,
        width: double.infinity,
        color: Colors.grey,
      ),
      Row(children: const [
        IconButton(onPressed: null, icon: Icon(Icons.favorite_border)),
        IconButton(onPressed: null, icon: Icon(Icons.chat_bubble_outline)),
        IconButton(onPressed: null, icon: Icon(Icons.send)),
        Spacer(),
        IconButton(onPressed: null, icon: Icon(Icons.bookmark_border)),
      ]),
      Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 4),
          child: Text('${post.likes} likes',
              style: const TextStyle(fontWeight: FontWeight.bold))),
      Container(
        margin: EdgeInsets.only(left: 8, right: 8),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(user.name, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 10),
          post.description.length > 100
              ? Text('${post.description.substring(0, 100)}...more')
              : Text(post.description),
        ],
        ),
      ),
      post.comments.isNotEmpty ? Padding(
        padding: EdgeInsets.only(left:8, top:4),
        child: Text('View all ${post.comments.length} comments',
          style: TextStyle(
            color: Colors.grey[600]
            )
          )
        ) : Container()
    ]);
  }
}
