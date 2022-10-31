import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

// A Counter example implemented with riverpod

void main() {
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    const ProviderScope(child: MyApp()),
  );
}

final counterProvider = StateProvider((ref) => 0);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends ConsumerWidget {
  List<String> urls = [
    "https://niigata-kankou.or.jp/spot/10668",
    "https://niigata-kankou.or.jp/spot/6950",
    "https://niigata-kankou.or.jp/spot/10063",
    "https://www.pref.niigata.lg.jp/sec/nosanengei/1249502659451.html",
    "https://collection.shiawasehome-reuse.com/column/bqgourmet",
    "https://tabizine.jp/2021/10/06/426556/",
  ];
  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse(urls[Random().nextInt(urls.length)]);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('新潟・長岡 知るボタン')),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 75, bottom: 75),
            child: Center(
                child: Text(
              "新潟・長岡のことをもっと知れるボタンです!\nたくさん押してみましょう!",
              style: TextStyle(
                fontSize: 18,
              ),
            )),
          ),
          Center(
            // Consumer is a widget that allows you reading providers.
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                shape: const CircleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.8,
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Center(
                  child: Image(
                    height: 300,
                    width: 300,
                    image: NetworkImage(
                        'https://1.bp.blogspot.com/-cjHol-V3tEA/UV1JKWwVOHI/AAAAAAAAPUc/kpkipj47LI4/s1600/kome_tawara.png'),
                  ),
                ),
              ),
              onPressed: () {
                _launchUrl();
                ref.read(counterProvider.state).state++;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
                'あなたの知った回数: ${ref.watch(counterProvider.state).state.toString()}'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
          )
        ],
      ),
    );
  }
}
