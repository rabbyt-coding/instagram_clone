
import 'package:flutter/material.dart';
import 'package:instagram_clone/store/Story.dart';
import 'package:instagram_clone/store/User.dart';
import 'package:provider/provider.dart';

class StoryList extends StatelessWidget {
  const StoryList({super.key});


  @override
  Widget build(BuildContext context) {
    final storyProvider = context.watch<StoryProvider>();
    final userProvider = context.watch<UserProvider>();
    final stories = storyProvider.stories;
    final storyLoading = storyProvider.loader;
    final getuserById = userProvider.getuserById;

    if (storyLoading) {
      return const SizedBox(
        height: 100,
        child: Center(
          child: CircularProgressIndicator()
          )
        );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: stories.length,
            itemBuilder: (context, index) {
              final user = getuserById(stories[index].userId);
              return Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        padding: const EdgeInsets.all(3),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.orange,
                              Colors.purple
                            ]
                            ),
                          borderRadius: BorderRadius.circular(60),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:  BorderRadius.circular(60),
                              ),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(
                                user.imageUrl
                                )
                              )
                            )
                        ),
                      ),
                      Text(user.name)
                  ],
                  )
                );
            }
            )
          )
      ]
      
    );
  }
}
