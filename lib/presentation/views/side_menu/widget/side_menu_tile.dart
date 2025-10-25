import 'package:events_web/presentation/controllers/side_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget sidebarItem({
  required String label,
  required IconData icon,
  required int index,
  required SideMenuController controller,
}) {
  return Obx(() {
    bool selected = controller.selectedPageIndex.value == index;
    return GestureDetector(
      onTap: () {
        controller.setPageIndex(index);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: selected ? Colors.white : Colors.grey[400],
              size: 24,
            ),
            SizedBox(width: 12),
            // Animate label appearance
            Flexible(
              fit: FlexFit.loose,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                transitionBuilder: (child, animation) =>
                    FadeTransition(opacity: animation, child: child),
                child: Text(
                  label,

                  // key: ValueKey(label),
                  // key: ValueKey(label + selected.toString()),
                  // style: TextStyle(
                  //   color: Colors.white,
                  //   fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
                  //   fontSize: 14,
                  //   height: 1.4,
                  // ),
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.2,
                    fontSize: 16,
                  ),
                  // textAlign: TextAlign.left
                  //
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                // : const SizedBox.shrink(),
              ),
            ),
            // if (selected)
            //   Expanded(
            //     child: Text(label, style: const TextStyle(color: Colors.white)),
            //   ),
          ],
        ),
      ),
    );
  });
}
