import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/chat.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // ignore: deprecated_member_use
      child: WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  expandedHeight: 15.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: const FlexibleSpaceBar(
                    titlePadding:  EdgeInsets.only(left: 60, bottom: 72),
                    title:  Text('Chats',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(60.0),
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.camera_alt),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
              body: Column(
                children: [
                  Expanded(
                    child: TabBarView(
                      children: [
                        CustomScrollView(
                          slivers: [
                            SliverToBoxAdapter(
                              child: SizedBox(
                                width: double.infinity,
                                height: 150,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: chats.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: CircleAvatar(
                                        radius: 46,
                                        backgroundColor: Colors.green,
                                        child: CircleAvatar(
                                          radius: 40,
                                          backgroundImage: AssetImage(chats[index].image),
                                          onBackgroundImageError: (_, __) => const Icon(Icons.error),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  return ListTile(
                                    leading: CircleAvatar(
                                      radius: 35,
                                      backgroundImage: AssetImage(chats[index].image),
                                      onBackgroundImageError: (_, __) => const Icon(Icons.error),
                                    ),
                                    title: Text(chats[index].name),
                                    subtitle: Text("${chats[index].msg}        ${chats[index].date}"),
                                    trailing: Icon(chats[index].icon),
                                  );
                                },
                                childCount: chats.length,
                              ),
                            ),
                          ],
                        ),
                        GridView.builder(
                          padding: const EdgeInsets.all(8.0),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                          ),
                          itemCount: chats.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: AssetImage(chats[index].image),
                                  fit: BoxFit.cover,
                                  onError: (_, __) => const Icon(Icons.error),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.green,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(chats[index].image),
                                    onBackgroundImageError: (_, __) => const Icon(Icons.error),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 80,
                    child: const TabBar(
                      tabs: [
                        Tab(text: 'Chat'),
                        Tab(text: 'Stories'),
                      ],
                      indicatorColor: Colors.blue, 
                      labelColor: Colors.blue, 
                      unselectedLabelColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
