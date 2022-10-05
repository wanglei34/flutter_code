import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ProfileFourPage extends StatelessWidget {
  const ProfileFourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              height: 370,
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
              ),
            ),
          ),
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 370,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.pexels.com/photos/12977343/pexels-photo-12977343.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              foregroundDecoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.6),
              ),
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              const SizedBox(
                height: 90,
              ),
              _buildAvatar(
                  'https://avatars.githubusercontent.com/u/59445871?v=4'),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'crq',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Flutter & Full Stack Developer',
                style: TextStyle(color: Colors.white70),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.white70,
                elevation: 10,
                margin: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 32,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '266K',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Followers',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '106K',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Following',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Favorite',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildFavoriteCard(context, 'Design'),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildFavoriteCard(context, 'Fruits'),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildFavoriteCard(context, 'Nature'),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Friends',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: Stack(
                  children: [
                    ...avatars
                        .asMap()
                        .map(
                          (i, e) => MapEntry(
                            i,
                            Transform.translate(
                              offset: Offset(i * 30.0, 0),
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: _buildAvatar(e, radius: 30),
                              ),
                            ),
                          ),
                        )
                        .values
                        .toList(),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  CircleAvatar _buildAvatar(String image, {double radius = 80}) {
    return CircleAvatar(
      backgroundColor: Colors.white70,
      radius: radius,
      child: CircleAvatar(
        radius: radius - 5,
        backgroundImage: NetworkImage(image),
      ),
    );
  }

  Widget _buildFavoriteCard(BuildContext context, String title) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.indigo.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4.0),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/12315477/pexels-photo-12315477.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
            ),
            foregroundDecoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 20),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

const List<String> avatars = [
  'https://images.pexels.com/photos/13546443/pexels-photo-13546443.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
  'https://images.pexels.com/photos/13297904/pexels-photo-13297904.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
  'https://images.pexels.com/photos/13144294/pexels-photo-13144294.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
  'https://images.pexels.com/photos/11742011/pexels-photo-11742011.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
  'https://images.pexels.com/photos/13164472/pexels-photo-13164472.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load'
];
