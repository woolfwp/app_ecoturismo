import 'package:flutter/material.dart';
import 'package:profile_ecoapp/app/domain/components/listitem.dart';
import 'package:profile_ecoapp/app/ui/pages/news/listwidget.dart';
import 'package:profile_ecoapp/app/ui/pages/news/detail_news.dart';

class News extends StatefulWidget {
  News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> with SingleTickerProviderStateMixin {
  List<ListItem> listTiles = [
    ListItem(
      "https://images.unsplash.com/photo-1571942347102-23df2d0ee3a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "Noticia 1",
      "Fernado",
      "28 Jan 2020",
    ),
    ListItem(
      "https://images.unsplash.com/photo-1571942347102-23df2d0ee3a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "Noticia 2",
      "Fernado",
      "28 Jan 2020",
    ),
    ListItem(
      "https://images.unsplash.com/photo-1571942347102-23df2d0ee3a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "Noticia 3",
      "Fernado",
      "28 Jan 2020",
    ),
    ListItem(
      "https://images.unsplash.com/photo-1571942347102-23df2d0ee3a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "Noticia 4",
      "Fernado",
      "28 Jan 2020",
    ),
    ListItem(
      "https://images.unsplash.com/photo-1571942347102-23df2d0ee3a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "Noticia 5",
      "Fernado",
      "28 Jan 2020",
    ),
  ];

  List<Tab> _tabList = [
    Tab(
      child: Text('Medio ambiente'),
    ),
    Tab(
      child: Text('Actualidad'),
    ),
    Tab(
      child: Text('Recomendaciones'),
    ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabList.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        centerTitle: true,
        title: Text(
          'News',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.black,
            controller: _tabController,
            tabs: _tabList,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                itemCount: listTiles.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsNews(
                            item: listTiles[index],
                            tag: listTiles[index].newsTitle,
                          ),
                        ),
                      );
                    },
                    child: listWidget(listTiles[index]),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
        ],
      ),
    );
  }
}
