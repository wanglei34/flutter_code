import 'package:flutter/material.dart';

class LandingOnePage extends StatelessWidget {
  final String bgImage =
      'https://cdn.staticaly.com/gh/poicc/image@main/1.66qtr1j9hkw0.webp';
  final String image =
      'https://images.pexels.com/photos/4808801/pexels-photo-4808801.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load';
  const LandingOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.network(
              bgImage,
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 5.0,
                        )
                      ]),
                  margin: const EdgeInsets.all(48.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(image), fit: BoxFit.cover),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'How will you do?',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 24.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Lorem ipsuim is simple dummy text of the \nprinting and typesetting industry.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                width: double.infinity,
                child: MaterialButton(
                  padding: const EdgeInsets.all(16.0),
                  textColor: Colors.white,
                  color: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Get Started',
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
