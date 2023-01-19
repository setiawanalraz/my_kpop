import 'package:flutter/material.dart';
import '../model/model.dart';
import '../widget/my_appbar.dart';
import '../widget/my_drawer.dart';
import 'news_detail.page.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  NewsPageState createState() => NewsPageState();
}

class NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: MyAppBar(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg_gradient.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.all(25),
        child: ListView.separated(
          itemBuilder: (_, index) {
            return Material(
              color: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  child: Stack(
                    children: [
                      Image.asset(
                        data[index].homeImgUrl,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            color: Colors.transparent,
                            child: Text(
                              data[index].name,
                              style: const TextStyle(
                                color: Colors.teal,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return NewsDetailPage(newsModel: data[index]);
                        },
                      ),
                    );
                  },
                ),
              ),
            );
          },
          separatorBuilder: (_, builder) => const SizedBox(height: 10),
          itemCount: data.length,
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
