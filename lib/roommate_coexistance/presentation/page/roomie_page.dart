import 'package:flutter/material.dart';
import 'package:meet_your_roommate_app/common/utils/colors.dart';
import 'package:meet_your_roommate_app/iam/application/auth_service.dart';
import 'package:meet_your_roommate_app/iam/user_provider.dart';
import 'package:meet_your_roommate_app/roommate_coexistance/presentation/page/roomie_matching_page.dart';

import 'package:provider/provider.dart';

class RoomiePage extends StatefulWidget {
  const RoomiePage({super.key});

  @override
  State<RoomiePage> createState() => _RoomiePageState();
}

class _RoomiePageState extends State<RoomiePage> {
  late AuthService authService;

  @override
  void initState() {
    authService = AuthService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return userProvider.isLogged
        ? DefaultTabController(
            length: 3,
            child: Scaffold(
              body: SafeArea(
                  child: Column(
                children: [
                  TabBar(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    splashBorderRadius: BorderRadius.circular(25),
                    indicatorColor: ColorsApp.primaryColor2,
                    labelColor: ColorsApp.primaryColor2,
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      Tab(
                        icon: Icon(Icons.people),
                      ),
                      Tab(
                        text: "Rented",
                      ),
                      Tab(
                        text: "Matches",
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        RoomieMatchingPage(),
                        Container(),
                        Container(),
                      ],
                    ),
                  )
                ],
              )),
            ),
          )
        : const Scaffold(
            body: Center(
              child: Text("Inicia Sesion para ver"),
            ),
          );
  }
}
