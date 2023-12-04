import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/config/styles.dart';
import 'package:go_app_client/core/utils/utils.dart';
import 'package:go_app_client/domain/entities/enum/enum.dart';
import 'package:go_app_client/helpers/vnpay_helper.dart';
import 'package:go_app_client/presentation/bloc/booking/booking_bloc.dart';


class PaymentCard extends StatefulWidget {
  final int price;
  const PaymentCard({super.key, required this.price});

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  var selectedWallet = Wallet.vnpay;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "Thanh toán",
              style: Styles.titleCardText,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text("Số tiền : ", style: Styles.primaryCardText),
              const Expanded(
                  child: SizedBox(
                width: double.infinity,
              )),
              Text(
                '${Utils.formatCurrency(widget.price)}đ',
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              // setState(() {
              //   selectedWallet = Wallet.momo;
              // });
              context.read<BookingBloc>().add(BookingEvent.pay());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: selectedWallet == Wallet.momo
                        ? const BorderSide(
                            color: AppColors.borderGreen, width: 1)
                        : BorderSide.none),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AppImages.icMomo,
                        fit: BoxFit.fill,
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Ví điện tử MoMo",
                        style: Styles.primaryCardText,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedWallet = Wallet.vnpay;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: selectedWallet == Wallet.vnpay
                      ? const BorderSide(color: AppColors.borderGreen, width: 1)
                      : BorderSide.none,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AppImages.icVNPay,
                        fit: BoxFit.fill,
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Ví VNPay",
                        style: Styles.primaryCardText,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: AppColors.primaryGreen,
                ),
                onPressed: _onPayment,
                child: const Text("Thanh toán",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _onPayment() async {
   
      var ipAddress = await Utils.getDeviceIPAddress();
    final paymentUrl = VNPAYFlutter.instance.generatePaymentUrl(
      url:
          'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html', 
      version: '2.0.1', //version of VNPAY, default is 2.0.1
      tmnCode: 'N6LU5YAQ', //vnpay tmn code, get from vnpay

      txnRef: DateTime.now()
          .millisecondsSinceEpoch
          .toString(), //ref code, default is timestamp
      orderInfo: 'Pay 30.000 VND', //order info, default is Pay Order
      amount: 30000, //amount
      returnUrl:
          'https://abc.com/return', //https://sandbox.vnpayment.vn/apis/docs/huong-dan-tich-hop/#code-returnurl
      ipAdress: ipAddress, //Your IP address
      vnpayHashKey:
          'YIIHKJWNUOQPNZSFIDHAZYTJNHBDJNJL', //vnpay hash key, get from vnpay
      vnPayHashType: VNPayHashType
          .HMACSHA512, //hash type. Default is HmacSHA512, you can chang it in: https://sandbox.vnpayment.vn/merchantv2
    );
    // ignore: use_build_context_synchronously
    VNPAYFlutter.instance.show(
      context: context,
      paymentUrl: paymentUrl,
      onPaymentSuccess: (params) {
        setState(() {
          // responseCode = params['vnp_ResponseCode'];
        });
      },
      onPaymentError: (params) {
        setState(() {
          // responseCode = 'Error';
        });
      },
    );
    }
   
  
}
