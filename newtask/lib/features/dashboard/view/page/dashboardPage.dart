import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtask/features/dashboard/controller/dashboard_controller.dart';
import 'package:newtask/features/dashboard/controller/dashboard_state.dart';
import 'package:newtask/features/dashboard/modules/users/view/page/user_page.dart';

class dashboardPage extends StatelessWidget {
  final List<String> titles = const ['Home', 'Users', 'Services'];
  const dashboardPage({super.key});
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => dashboardController(),
      child: BlocBuilder<dashboardController, dashboardState>(
        builder: (context, state) {
          dashboardController controller = context.read<dashboardController>();
          return Scaffold(
            appBar: AppBar(
              leading: Image.asset('assets/image/R.png'),
              backgroundColor: Colors.blue,
              title: Text(titles[controller.selectedTapIndex],
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signup');
                  },
                  icon: const Icon(CupertinoIcons.add),
                )
              ],
            ),
            body: PageView(
                controller: controller.pageController0,
                onPageChanged: controller.onChangeTabIndex,
                children: const [
                  Text("Home"),
                  UserPage(),
                  Text("Services"),
                ]),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.selectedTapIndex,
              onTap: controller.onChangeTabIndex,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              unselectedLabelStyle:
                  const TextStyle(fontSize: 15, color: Colors.blue),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home), label: 'home'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'users'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: 'services')
              ],
            ),
          );
        },
      ),
    );
  }
}
