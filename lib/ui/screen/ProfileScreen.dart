import 'package:flutter/material.dart';
import 'package:instagram_clone/store/User.dart';
import 'package:instagram_clone/ui/components/BottomNavigation.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>  with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = context.read<UserProvider>();
    final userMain = userProvider.loggedUser;
    final user = userProvider.userProfile;

    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(user.name,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            actions: const [
              IconButton(
                icon: Icon(Icons.add_box_outlined, color: Colors.black),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.menu, color: Colors.black),
                onPressed: null,
              ),
            ]),
        bottomNavigationBar: const BottomNavigation(),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                            image: NetworkImage(
                          userMain.imageUrl,
                        )))),
                Column(children: [
                  Text(user.postsIds.length.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  const Text('Posts')
                ]),
                Column(children: [
                  Text(user.followers.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  const Text('Followers')
                ]),
                Column(children: [
                  Text(user.following.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  const Text('Following')
                ]),
              ]),
              const SizedBox(
                height: 10,
              ),
              Text(
                userMain.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(user.description),
              Row(children: const [
                Expanded(
                    flex: 3,
                    child: Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: ElevatedButton(
                            onPressed: null,
                            child: Text('Edit profile',
                                style: TextStyle(color: Colors.black))))),
                Expanded(
                    flex: 3,
                    child: Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: ElevatedButton(
                            onPressed: null,
                            child: Text('Share profile',
                                style: TextStyle(color: Colors.black))))),
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        onPressed: null,
                        child: Center(
                            child: Icon(Icons.person_add_outlined,
                                color: Colors.black))))
              ]),
              const SizedBox(
                height: 10,
                ),

              TabBar(
                labelColor: Colors.black,
                controller: _tabController,
                tabs: const [
                  Tab(icon: Icon(Icons.grid_on_outlined))
                ]
                ),
              Expanded(
                child: TabBarView(
                  controller:_tabController,
                  children: const [
                  ],
                  )
                )
            ])));
  }
}
