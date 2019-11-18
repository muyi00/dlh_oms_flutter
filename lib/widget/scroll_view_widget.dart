import 'package:dlh_oms_flutter/base/BaseStatelessWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScrollViewWidget extends BaseStatelessWidget {
  @override
  String getAppBarTitle() {
    return 'ScrollViewWidget';
  }

  @override
  String getTitle() {
    return 'ScrollViewWidget';
  }

  @override
  Widget setBody(BuildContext context) {
    return getPageView_Builder(context, getItemList());
  }
}

SingleChildScrollView getSingleChildScrollView() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[Text('Hello Flutter1 ' * 1000)],
    ),
  );
}

ListView getListView() {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
    ],
  );
}

List<String> getItemList() {
  return List<String>.generate(1000, (index) => "Item $index");
}

ListView getListView_Builder(BuildContext context, List<String> items) {
  return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      });
}

ListView getListView_Separated(BuildContext context) {
  List<String> items = List<String>.generate(1000, (index) => "Item $index");
  return ListView.separated(
    itemCount: items.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(items[index]),
      );
    },
    separatorBuilder: (context, index) {
      return Container(
        constraints: BoxConstraints.tightFor(height: 4),
        color: Colors.blue,
      );
    },
  );
}

ListView getListView_Custom() {
  return ListView.custom(
    childrenDelegate: SliverChildListDelegate(<Widget>[
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
      ListTile(
        title: Text('Title1'),
      ),
    ]),
  );
}

CustomScrollView getCustomScrollView() {
  return CustomScrollView(
    slivers: <Widget>[
      SliverAppBar(
        pinned: true,
        expandedHeight: 250,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('CustomScrollView'),
        ),
      ),
      SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4.0,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: Text('grid item $index'),
            );
          },
          childCount: 20,
        ),
      ),
      SliverFixedExtentList(
        itemExtent: 50.0,
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.lightBlue[100 * (index % 9)],
              child: Text('list item $index'),
            );
          },
        ),
      ),
    ],
  );
}

GridView getGridView() {
  return GridView(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
    children: <Widget>[
      ListTile(
        title: Center(
          child: Text('Title1'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title22222222'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title32'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title4'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title522222'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title6'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title7'),
        ),
      ),
    ],
  );
}

GridView getGridView_Count() {
  return GridView.count(
    crossAxisCount: 3,
    children: <Widget>[
      ListTile(
        title: Center(
          child: Text('Title1'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title22222222'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title32'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title4'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title522222'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title6'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title7'),
        ),
      ),
    ],
  );
}

GridView getGridView_Extent() {
  return GridView.extent(
    maxCrossAxisExtent: 100,
    children: <Widget>[
      ListTile(
        title: Center(
          child: Text('Title1'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title22222222'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title32'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title4'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title522222'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title6'),
        ),
      ),
      ListTile(
        title: Center(
          child: Text('Title7'),
        ),
      ),
    ],
  );
}

GridView getGridView_Builder(BuildContext context, List<String> items) {
  return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Center(
            child: Text(
              items[index],
              style: TextStyle(color: Colors.blue),
            ),
          ),
        );
      });
}

GridView getGridView_Custom() {
  return GridView.custom(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      childrenDelegate: SliverChildListDelegate(<Widget>[
        ListTile(title: Text('Title1')),
        ListTile(title: Text('Title2')),
        ListTile(title: Text('Title3')),
        ListTile(title: Text('Title4')),
        ListTile(title: Text('Title5')),
        ListTile(title: Text('Title6')),
        ListTile(title: Text('Title7')),
        ListTile(title: Text('Title8')),
        ListTile(title: Text('Title9')),
        ListTile(title: Text('Title10')),
        ListTile(title: Text('Title11')),
        ListTile(title: Text('Title12')),
        ListTile(title: Text('Title13')),
        ListTile(title: Text('Title14')),
      ]));
}

PageView getPageView() {
  return PageView(
    onPageChanged: (index) {
      print('current page $index ');
    },
    children: <Widget>[
      ListTile(title: Text('Title0')),
      ListTile(title: Text('Title1')),
      ListTile(title: Text('Title2')),
      ListTile(title: Text('Title3')),
      ListTile(title: Text('Title4')),
    ],
  );
}

PageView getPageView_Builder(BuildContext context, List<String> items) {
  return PageView.builder(
      onPageChanged: (index) {
        print('current page $index ');
      },
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      });
}
