import 'package:flutter/material.dart';
import 'package:test/info_list_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              //Background Image
              Positioned.fill(
                child: Image.asset(
                  'assets/images/background_img.png',
                  fit: BoxFit.fill,
                ),
              ),

              //column contain two containers
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 80.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //top container
                    Container(
                      height: 128,
                      decoration: BoxDecoration(
                        color: Color(0xff0D9488).withValues(alpha: .8),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                    ),

                    //container contain the person info
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff111827).withValues(alpha: .3),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: .2),
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        children: [
                          SizedBox(height: 80),
                          Text(
                            'Ahmed Mohamed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),

                          Text(
                            'Business Development Manager',
                            style: TextStyle(
                              color: Color(0xffD1D5DB),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),

                          Text(
                            'Advanced Technology Company',
                            style: TextStyle(
                              color: Color(0xff9CA3AF),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 24),

                          //custom divider because the default divider doesn't support gradient color
                          Container(
                            height: 1,
                            margin: const EdgeInsets.symmetric(horizontal: 24),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff4B5563).withValues(alpha: .0),
                                  Color(0xff4B5563),
                                  Color(0xff4B5563).withValues(alpha: .0),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 24),

                          //custom widget to show the person info in a list tile with an icon and a title and a subtitle
                          //i make it because reusability and to make the code cleaner
                          InfoListTile(
                            title: 'Phone',
                            subtitle: '+1 234 567 890',
                            icon: Icons.phone_outlined,
                            iconColor: Color(0xff60A5FA),
                            iconBackgroundColor: Color(0xff3B82F6),
                          ),
                          InfoListTile(
                            title: 'Email',
                            subtitle: 'ahmed.mohamed@example.com',
                            icon: Icons.email_outlined,
                            iconColor: Color(0xffC084FC),
                            iconBackgroundColor: Color(0xffA855F7),
                          ),
                          InfoListTile(
                            title: 'Location',
                            subtitle: 'New York, USA',
                            icon: Icons.location_on_outlined,
                            iconColor: Color(0xff4ADE80),
                            iconBackgroundColor: Color(0xff22C55E),
                          ),
                          SizedBox(height: 24),

                          Divider(color: Color(0xff4B5563)),
                          SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 16,
                            children: [
                              Image.asset('assets/images/linkedin_icon.png'),
                              Image.asset('assets/images/website_icon.png'),
                            ],
                          ),
                          SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Circle Avatar for the person image
              Positioned(
                top: 150,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 64,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'assets/images/background_img.png',
                    ),
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
