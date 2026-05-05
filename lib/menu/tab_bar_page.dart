import 'package:flutter/material.dart';

import '../layout/column_page.dart';
import '../layout/row_page.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.table_rows), text: "Layout Row"),
              Tab(icon: Icon(Icons.view_column_rounded), text: "Layout Column"),
            ],
          ),
        ),
        body: TabBarView(children: [RowPage(), ColumnPage()]),
      ),
    );
  }
}
