import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/active_status_dot.dart';

import 'package:messenger_clone/widgets/display_image.dart';
import '../data/info.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 13.0),
        child: Column(

          children: [
            const SizedBox(height: 8,),
            // Stories grid
            Expanded(
              child: GridView.builder(
                itemCount: info.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 13,
                  mainAxisExtent: 230,
                ),
                itemBuilder: (context, index) {
                  final data = info[index];
                  final url = "${data['name']}.${data['imageType']}";
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          "assets/images/$url",
                          fit: BoxFit.cover,
                          color: Colors.black.withOpacity(0.3),
                          colorBlendMode: BlendMode.darken,
                        ),

                        Positioned(
                          top: 18,
                          left: 15,
                          child: index != 0
                              ? Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(1),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          colors: [Colors.blue, Colors.green],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                      child: DisplayImage(
                                        url: url,
                                        radius: 18,
                                      ),
                                    ),
                                    data["isOnline"] == true? const Positioned(
                                      right: 5,
                                      bottom: 0,
                                      child: ActiveStatusDot(
                                        size: 7,
                                        strokeColor: Colors.white70,
                                        strokeWidth: 1,
                                        fillColor: Colors.green,
                                      ),
                                    ):Container(),
                                  ],
                                )
                              : CircleAvatar(
                                  radius: 16,
                                  backgroundColor:
                                      Colors.white.withOpacity(0.9),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                        ),

                        index != 0
                            ? Positioned(
                                bottom: 10,
                                left: 15,
                                child: Text(
                                  data['name'],
                                  style: const TextStyle(
                                    color: Colors.white,

                                    fontSize: 14,
                                  ),
                                ),
                              )
                            : const Positioned(
                                bottom: 10,
                                right: 15,
                                child: Text(
                                  "Add to story",
                                  style: TextStyle(
                                    color: Colors.white,

                                    fontSize: 14,
                                  ),
                                ),
                              ),
                        // ActiveStatusDot(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
