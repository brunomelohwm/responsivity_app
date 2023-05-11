import 'package:flutter/material.dart';
import 'package:responsivity_app/breakpoints.dart';
import 'package:responsivity_app/pages/home/widgets/app_bar/promotion_messages.dart';
import 'package:responsivity_app/pages/home/widgets/custom_search_field.dart';
import 'package:responsivity_app/pages/image.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      if (maxWidth >= tabletBreakpoint) {
        return AspectRatio(
          aspectRatio: 3.2,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3.7,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    return Image.network(
                      imagePath,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
              Positioned(
                left: 50,
                top: 50,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                    width: 450,
                    padding: const EdgeInsets.all(22),
                    child: const Column(
                      children: [
                        Text(
                          'Aprenda Flutter com este curso',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          promotionMessages,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),
                        CustomSearchField(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
      if (maxWidth >= mobileBreakpoint) {
        return SizedBox(
          height: 320,
          child: Stack(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                    width: 350,
                    padding: const EdgeInsets.all(22),
                    child: const Column(
                      children: [
                        Text(
                          'Aprenda Flutter com este curso',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          promotionMessages,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),
                        CustomSearchField(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
      return Column(
        children: [
          AspectRatio(
            aspectRatio: 3.4,
            child: Image.network(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aprenda Flutter no seu tempo',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  promotionMessages,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                CustomSearchField(),
              ],
            ),
          ),
        ],
      );
    });
  }
}
