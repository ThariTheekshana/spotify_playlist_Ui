import 'package:flutter/material.dart';
import 'package:music_player/component/box.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 130, 9, 9),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // back button and menu button
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Box(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      'P L A Y L I S T',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Box(
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 25),

                // album art, artist name, song name
                Box(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('lib/images/hamaHeenema.jpeg'),
                      ),

                      const SizedBox(height: 24),
                      // Song name
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hama Heenema',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  'Induja',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 18),
                            child: Icon(
                              Icons.add_circle_outline,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 25),

                      // linear progress bar
                      Column(
                        children: [
                          LinearProgressIndicator(
                            value: 0.36,
                            color: Colors.white,
                            backgroundColor: Colors.grey,
                            minHeight: 4,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          const SizedBox(height: 4),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '1.08',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                ),
                              ),
                              Text(
                                '-2.22',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      // song controlls (start time, shuffle button, repeat button, end time)
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.shuffle,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                            size: 44,
                          ),
                          Icon(
                            Icons.pause_circle,
                            color: Colors.white,
                            size: 64,
                          ),
                          Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 44,
                          ),
                          Icon(
                            Icons.repeat_outlined,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.speaker_group,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.ios_share_rounded,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.playlist_play_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
