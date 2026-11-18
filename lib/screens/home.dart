import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color blue = Color(0xFF1877F2);
  static const Color grey = Color(0xFF8A8D9F);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Facebook',
                      style: TextStyle(
                        color: blue,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.add_circle, size: 28),
                        SizedBox(width: 12),
                        Icon(Icons.search, size: 28),
                        SizedBox(width: 12),
                        ImageIcon(AssetImage('lib/assets/images/messenger.png'), size: 28),
                      ],
                    ),
                  ],
                ),
              ),

              // Tab icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.home, color: blue, size: 30),
                  Icon(Icons.ondemand_video, color: grey, size: 30),
                  Icon(Icons.storefront, color: grey, size: 30),
                  Icon(Icons.account_circle_outlined, color: grey, size: 30),
                  Icon(Icons.notifications_none, color: grey, size: 30),
                  CircleAvatar(
                    radius: 14,
                    backgroundImage:
                        AssetImage('lib/assets/images/profile_image.png'),
                  ),
                ],
              ),
              const Divider(thickness: 1),

              // What's in your mind
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage:
                          AssetImage('lib/assets/images/profile_image.png'),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'What’s in Your Mind?',
                        style: TextStyle(color: grey, fontSize: 16),
                      ),
                    ),
                    Icon(Icons.photo_library, color: Colors.green, size: 28),
                  ],
                ),
              ),
              const Divider(thickness: 1),

              // Stories
              SizedBox(
                height: 175,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    _createStory('lib/assets/images/profile_image.png'),
                    _story('lib/assets/images/st2.jpg','lib/assets/images/pfp2.jpg'),
                    _story('lib/assets/images/st3.jpg','lib/assets/images/pfp3.jpg'),
                    _story('lib/assets/images/st5.jpg','lib/assets/images/pfp4.jpg'),
                    _story('lib/assets/images/st4.jpg','lib/assets/images/pfp5.jpg'),
                  ],
                ),
              ),
              const Divider(thickness: 1),

              // Post header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage('lib/assets/images/rourelogo.png'),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Route',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '8h ago',
                            style: TextStyle(color: grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.more_horiz),
                  ],
                ),
              ),

              // Post image
              const SizedBox(height: 8),
              Image.asset(
                'lib/assets/images/route.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),

             
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: const [
                    ImageIcon(AssetImage('lib/assets/images/like.png'), size: 28),
                    SizedBox(width: 12),
                    ImageIcon(AssetImage('lib/assets/images/chat.png'), size: 28  ),
                    SizedBox(width: 12),
                    ImageIcon(AssetImage('lib/assets/images/plane.png'), size: 28),
                    Spacer(),
                    ImageIcon(AssetImage('lib/assets/images/Bookmark.png'), size: 28),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

    Widget _story(String image, String avatar) {
    return Container(
      width: 110,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          color: blue,
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 16,
          backgroundImage: AssetImage(avatar),
        ),
      ),
    );

  }
    Widget _createStory(String image) {
    return Container(
      width: 110,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  image,
                  height: 100,
                  width: 110,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: -14,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 12,
                    backgroundColor: blue,
                    child: Icon(Icons.add, color: Colors.white, size: 18),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          const Text(
            'Create a\nStory',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}