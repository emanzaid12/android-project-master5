import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtask/features/dashboard/controller/dashboard_controller.dart';
import 'package:newtask/features/dashboard/controller/dashboard_state.dart';

class dashboardPage extends StatelessWidget {
  const dashboardPage({super.key});
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => dashboardController(),
        child: BlocBuilder<dashboardController, dashboardState>(
          builder: (context, state) {
            dashboardController controller =
                context.read<dashboardController>();
            return Scaffold(
              appBar: AppBar(
                leading: Image.asset('assets/image/R.png'),
                backgroundColor: Colors.blue,
                title: const Text('WAtCH STORE',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              body: PageView(
                  controller: controller.pageController0,
                  onPageChanged: controller.onChangeTabIndex,
                  children: const [
                    Text("Home"),
                    Text("Users"),
                    Text("Services")
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
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'users'),
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
