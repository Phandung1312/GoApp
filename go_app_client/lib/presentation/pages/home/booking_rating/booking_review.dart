import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/core/utils/utils.dart';
import 'package:go_app_client/domain/entities/review_template.dart';
import 'package:go_app_client/presentation/pages/home/booking_rating/section/review_item.dart';
import 'package:go_app_client/presentation/widgets/main_tool_bar.dart';

class BookingReviewPage extends StatefulWidget {
  const BookingReviewPage({super.key});

  @override
  State<BookingReviewPage> createState() => _BookingReviewPageState();
}

class _BookingReviewPageState extends State<BookingReviewPage> {
  String reviewDescription = "Hoàn hảo";
  List<ReviewTemplate> reviewTemplates = Utils.getReviewTemplates();
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const MainToolBar(title: "Đánh giá tài xế", isBack: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      reviewDescription,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                  RatingBar.builder(
                      itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 7,
                          ),
                      initialRating: 5,
                      allowHalfRating: true,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      direction: Axis.horizontal,
                      itemCount: 5,
                      minRating: 0,
                      onRatingUpdate: (rating) {
                        setState(() {
                          reviewDescription = Utils.reviewDescription(rating);
                        });
                      })
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Bạn hài lòng vế cuốc xe chứ? Hãy cho tài xế biết ý kiến của bạn.",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 80 +
                  Utils.textHeight("te", 2,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500)),
              child: ListView.builder(
                  itemCount: reviewTemplates.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      ReviewItem(reviewTemplate: reviewTemplates[index], editingController: editingController,)),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: TextField(
                controller: editingController,
                maxLines: 5,
                minLines: 1,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 0, horizontal: 15),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Viết đánh giá cho tài xế",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.6))),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(15),
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.primaryGreen,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  "Gửi",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
