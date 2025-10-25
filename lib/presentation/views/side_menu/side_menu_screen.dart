import 'package:events_web/core/theme/app_theme.dart';
import 'package:events_web/core/utils/context_extension.dart';
import 'package:events_web/presentation/controllers/side_menu_controller.dart';
import 'package:events_web/presentation/views/exhibiton/exhibition_manage_page.dart';
import 'package:events_web/presentation/views/settings/settings_page.dart';
import 'package:events_web/presentation/views/side_menu/widget/side_menu_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenuScreen extends StatelessWidget {
  SideMenuScreen({super.key});

  final SideMenuController controller = Get.put(SideMenuController());

  final List<Widget> pages = [ExhibitionManagePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Container(
            width: context.screenWidth * 0.2,
            color: WebTheme.adminSideMenu,
            child: Column(
              children: [
                SizedBox(height: context.screenHeight * 0.02),

                // StreamBuilder(
                //   stream: FirebaseFirestoreService.fireStoreService
                //       .getSettingDetail(),
                //   builder: (context, asyncSnapshot) {
                //     if (asyncSnapshot.hasData) {
                //       var data = asyncSnapshot.data?.data();
                //       var coData = CompanySettingsModel.fromMap(data ?? {});

                //       return ListTile(
                //         leading: Container(
                //           padding: EdgeInsets.all(4), // responsive padding
                //           decoration: BoxDecoration(
                //             color: AppTheme.primaryColor.withValues(alpha: 0.8),
                //             borderRadius: BorderRadius.circular(8.r),
                //           ),
                //           child: ClipRRect(
                //             borderRadius: BorderRadius.circular(18.r),

                //             child:
                //                 // coData.logoUrl.isNotEmpty
                //                 //     ?
                //                 Image.network(
                //                   '${coData.logoUrl}',
                //                   fit: BoxFit.fill,
                //                   height: 0.1.sh,
                //                   width: 0.06.sw,
                //                 ),
                //           ),
                //         ),
                //         title: Text(
                //           "${coData.companyName}",
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 18.sp,
                //           ),
                //         ),
                //       );
                //     }
                //     return ListTile(
                //       leading: Container(
                //         padding: EdgeInsets.all(4.w),
                //         decoration: BoxDecoration(
                //           color: AppTheme.primaryColor,
                //           borderRadius: BorderRadius.circular(8.r),
                //         ),
                //         child: Icon(
                //           Icons.shield_outlined,
                //           color: Colors.white,
                //           size: 30.sp,
                //         ),
                //       ),
                //       title: Text(
                //         "Admin Panel",
                //         style: TextStyle(color: Colors.white, fontSize: 18.sp),
                //       ),
                //     );
                //   },
                // ),
                SizedBox(height: 16),

                sidebarItem(
                  label: 'Exhibition Management',
                  icon: Icons.article_outlined,
                  index: 0,
                  controller: controller,
                ),
                sidebarItem(
                  label: 'Exhibitor Management',
                  icon: Icons.people_outline,
                  index: 1,
                  controller: controller,
                ),

                // adminSidebarItem(
                //   label: 'Exhibitor Filter Manager',
                //   icon: Icons.filter_alt_outlined,
                //   index: 2,
                //   controller: controller,
                // ),

                // adminSidebarItem(
                //   label: 'Ticketing / Sessions',
                //   icon: Icons.movie_creation_outlined,
                //   index: 3,
                //   controller: controller,
                // // ),
                // adminSidebarItem(
                //   label: 'Announcements',
                //   icon: Icons.campaign_outlined,
                //   index: 3,
                //   controller: controller,
                // ),
                // adminSidebarItem(
                //   label: 'Sponsors',
                //   icon: Icons.corporate_fare,
                //   index: 4,
                //   controller: controller,
                // ),

                // adminSidebarItem(
                //   label: 'Exhibition Analytics',
                //   icon: Icons.analytics_outlined,
                //   index: 4,
                //   controller: controller,
                // ),
                // adminSidebarItem(
                //   label: 'QR Code Management',
                //   icon: Icons.qr_code_2_outlined,
                //   index: 5,
                //   controller: controller,
                // ),
                // adminSidebarItem(
                //   label: 'QR Scanner & Logs',
                //   icon: Icons.fullscreen_outlined,
                //   index: 6,
                //   controller: controller,
                // ),
                // adminSidebarItem(
                //   label: 'Advertisement',
                //   icon: Icons.local_offer,
                //   index: 5,
                //   controller: controller,
                // ),
                // adminSidebarItem(
                //   label: 'Speaker',
                //   icon: Icons.record_voice_over_outlined,
                //   index: 6,
                //   controller: controller,
                // ),
                // adminSidebarItem(
                //   label: 'Settings',
                //   icon: Icons.settings,
                //   index: 7,
                //   controller: controller,
                // ),

                // // SizedBox(height: 20),
                // Spacer(),
                // OutlinedButton(
                //   onPressed: () {
                //     Get.offNamed(AppRoutes.login);
                //   },
                //   child: Text(
                //     "Log Out",
                //     style: TextStyle(
                //       color: AppTheme.secondaryColor,
                //       fontWeight: FontWeight.w500,
                //       fontSize: 20.sp,
                //     ),
                //   ),
                //   style: OutlinedButton.styleFrom(
                //     side: BorderSide(color:WebTheme .),
                //   ),
                // ),
                SizedBox(height: 12),
              ],
            ),
          ),

          // Main content using IndexedStack
          Expanded(
            child: Obx(() {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),

                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                // child: (role: controller.selectedRole.value),
                child: pages[controller.selectedPageIndex.value],
              );
            }),
          ),
        ],
      ),
    );
  }
}
