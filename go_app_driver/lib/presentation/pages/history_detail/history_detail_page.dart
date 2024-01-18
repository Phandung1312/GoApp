import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_app_driver/config/images.dart';
import 'package:go_app_driver/core/utils/utils.dart';
import 'package:go_app_driver/domain/entities/history.dart';
import 'package:go_app_driver/extensions/enum_extension.dart';
import 'package:go_app_driver/presentation/widgets/main_tool_bar.dart';

class HistoryDetailPage extends StatelessWidget {
  const HistoryDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var history = ModalRoute.of(context)!.settings.arguments as History;
    return SafeArea(
      child: Scaffold(
        appBar: MainToolBar(
          title: Utils.fromTimeStamp(
              timeStamp: history.createAt, format: "HH:mm dd/MM/yyyy"),
        ),
        body: Column( children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                const Text(
                  "Mã đặt xe : ",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  history.id.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 112, 112, 113),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              history.bookingStatus.toHistory(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _buildCustomer(
            history,
          ),
          const SizedBox(
            height: 10,
          ),
          _buildRoute(history),
          if (history.review.id != 0) ...[
            _buildReview(history)
          ] else ...[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Không có đánh giá từ khách hàng",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
            )
          ]
        ]),
      ),
    );
  }

  Widget _buildCustomer(History history) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            "Khách hàng : ${history.customerInfo.fullName}",
            style: TextStyle(
                color: Colors.black.withOpacity(0.8),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _buildRoute(History history) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: AppImages.icGreenDot,
                    color: Colors.blue,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Đón khách ",
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          history.from,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.ellipsis),
                          maxLines: 2,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: AppImages.icRedDot,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Khách xuống xe",
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          history.to,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.ellipsis),
                          maxLines: 2,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Text(history.vehicleType.toName()),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Text("VND "
                        "${Utils.formatCurrency(history.price.toInt())}"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Text(history.paymentMethod),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildReview(History history) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Đánh giá từ khách hàng",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Số sao đánh giá :",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              RatingBar.builder(
                  ignoreGestures: true,
                  itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 10,
                      ),
                  itemSize: 30,
                  initialRating: history.review.rating,
                  allowHalfRating: true,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                  direction: Axis.horizontal,
                  itemCount: 5,
                  minRating: 1,
                  onRatingUpdate: (rating) {}),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          if (history.review.content.isNotEmpty) ...[
            Text("Nội dung:",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
            Text("-${history.review.content}",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 14,
                    fontWeight: FontWeight.w400))
          ]
        ],
      ),
    );
  }
}
