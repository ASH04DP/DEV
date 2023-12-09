import 'package:flutter/material.dart';
import 'package:insta/tabs/feed_view.dart';
import 'package:insta/tabs/reels_view.dart';
import 'package:insta/tabs/tagged_view.dart';



class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  //tabs
  final List<Widget> tabs = const [
    //Feed Tab
    Tab(
      icon: Icon(
        Icons.image,
        color: Colors.grey,
      ),
    ),
    
    //Reels Tab
    Tab(
      icon: Icon(
        Icons.view_week_rounded,
        color: Colors.grey,
      ),
    ),

    //Tagged
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  //tab Bar views
  final List<Widget> tabBarViews = const [
    //feed View
    FeedView(),

    //reels view
    ReelsView(),

    //tagged view
    TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 20,),
            //Profile Details
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                //following
                    Text('200', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
        
                // Profile pic
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('lib/images/profile.jpg'),
                    ),
                  ),
                ),

        
        
                //followers
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                //following
                    Text('200', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ],
            ),
        
        
            const SizedBox(height: 20,),
            //Name
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
              Text(
                'Dinakar Pathakota',
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 16
              ),),
              Text(
                ' | ',
              ),
              Text(
                'Student',
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 16
              ),),
            ],),
        
            const SizedBox(height: 5,),
        
            //Bio
            Text(
              'Cyber Security Student . Adreline . NTECHX CEO',
              style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,
            ),
        
            const SizedBox(height:5,),
        
        
            // Links
            Text(
              'github.com/ASH04DP/',
              style: TextStyle(color: Colors.blue[500],fontWeight: FontWeight.bold, ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height:20,),
            //Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text('Edit Profile'),
                      ),
                    ),
                  ),
              
                  const SizedBox(width: 10,),
              
                  //contact
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text('Contact',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        
            const SizedBox(height: 20,),
        
            // tabBar
            const SizedBox(height: 20),
            TabBar(
              tabs: tabs,
            ),
        
            // tabBar View
            SizedBox(
              height: MediaQuery.of(context).size.height - 300,
              child: TabBarView(children: tabBarViews),
            ),
          ],
        ),
      ),
    );
  }
}