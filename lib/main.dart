import 'package:bader_dashboard/repositories/auth_repo.dart';
import 'package:bader_dashboard/repositories/dashboard_repo.dart';
import 'package:bader_dashboard/shared/Constants/constants.dart';
import 'package:bader_dashboard/shared/bloc_observer/bloc_observer.dart';
import 'package:bader_dashboard/shared/components/colors.dart';
import 'package:bader_dashboard/view/screens/assign_leader_screen.dart';
import 'package:bader_dashboard/view/screens/create_club_screen.dart';
import 'package:bader_dashboard/view/screens/dashboard_screen.dart';
import 'package:bader_dashboard/view/screens/delete_club_screen.dart';
import 'package:bader_dashboard/view/screens/login_screen.dart';
import 'package:bader_dashboard/view/screens/review_reports_screen.dart';
import 'package:bader_dashboard/view/screens/view_clubs_screen.dart';
import 'package:bader_dashboard/view/screens/view_events_screen.dart';
import 'package:bader_dashboard/view/screens/view_reports_screen.dart';
import 'package:bader_dashboard/view_model/auth_cubit/auth_cubit.dart';
import 'package:bader_dashboard/view_model/dashboard_cubit/dashboard_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'dart:io';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final Widget? initialRoute;
  const MyApp({super.key, this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                  create: (context) => AuthCubit(
                      authRepository: AuthRepository()..getAdminData())),
              BlocProvider(
                  create: (context) =>
                      DashBoardCubit(dashboardRepository: DashboardRepository())
                        ..getAllClubs()
                        ..getAllReports()
                        ..getEvents())
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Bader Dashborad",
              home: child,
              routes: {
                "dashboard_screen": (context) => const DashboardScreen(),
                "login_screen": (context) => LoginScreen(),
                "create_Club": (context) => CreateClubScreen(),
                "view_Clubs": (context) => const ViewClubsScreen(),
                "view_Reports": (context) => const ViewReportsScreen(),
                "view_Events": (context) => const ViewEventsScreen(),
                "review_Reports": (context) => const ReviewReportsScreen(),
                "delete_Club": (context) => const DeleteClubScreen(),
                "assign_Club_Leader": (context) =>
                    const AssignClubLeaderScreen(),
              },
              theme: ThemeData(
                fontFamily: "Cairo",
                appBarTheme: AppBarTheme(
                    titleTextStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                    backgroundColor: mainColor,
                    foregroundColor: Colors.white,
                    elevation: 0),
                primaryColor: mainColor,
              ),
            ),
          );
        },
        child: LoginScreen()
        // Constants.kAdminID != null ? const DashboardScreen() : LoginScreen()
        );
  }
}
