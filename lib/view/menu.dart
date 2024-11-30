import 'package:flutter/material.dart';
import 'package:loveandeat/viewcontroller/provider.dart';
import 'package:provider/provider.dart';
// Import the HoverNotifier class

class MenuSection extends StatelessWidget {
  final List<String> menuItems = ["Pizza", "Pasta", "Burger", "Salad", "Dessert", "Samosa", "Chicken", "Sweet"];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppState(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Our Menu",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width < 600 ? 2 : 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return Consumer<AppState>(
                  builder: (context, hoverNotifier, child) {
                    bool isHovered = hoverNotifier.isHovered(index);
                    return MouseRegion(
                      onEnter: (_) {
                        hoverNotifier.setHover(index, true);  // Set hover state to true
                      },
                      onExit: (_) {
                        hoverNotifier.setHover(index, false);  // Set hover state to false
                      },
                      child: Card(
                        elevation: isHovered ? 8 : 4,  // Increase elevation on hover
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        color: isHovered ? Colors.blue.withOpacity(0.1) : Colors.white,  // Change color on hover
                        child: Center(
                          child: Text(
                            menuItems[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: isHovered ? Colors.blue : Colors.black,  // Change text color on hover
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
