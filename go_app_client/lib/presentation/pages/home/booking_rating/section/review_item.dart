import 'package:flutter/material.dart';
import 'package:go_app_client/config/images.dart';

import 'package:go_app_client/domain/entities/review_template.dart';

class ReviewItem extends StatelessWidget {
  final ReviewTemplate reviewTemplate;
  final TextEditingController editingController;
  const ReviewItem({super.key, required this.reviewTemplate, required this.editingController});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        editingController.text = reviewTemplate.content ?? "";
      },
      child: SizedBox(
        width: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: reviewTemplate.image ?? AppImages.appLogo,
              width: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Text(
                reviewTemplate.content ?? "",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
