import 'package:flutter/material.dart';
import 'package:todo_app_demo/data/notes_data.dart';
import 'package:todo_app_demo/pages/completed_page.dart';
import 'package:todo_app_demo/pages/task_page.dart';
import 'package:todo_app_demo/widgets/alert_new_task.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();
  int _actualPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [TaskPage(), CompletedPage()],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context)=> const AlertNewTask()).then((value){
            if(value!=null) setState(() {});
          }),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _actualPage,
        onTap: (i) => setState(() {
          _actualPage = i;
          _pageController.animateToPage(i,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInOut);
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Pendientes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.task_alt), label: 'Completas')
        ],
      ),
    );
  }
}
