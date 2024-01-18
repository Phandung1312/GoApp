import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_client/config/colors.dart';
import 'package:go_app_client/config/images.dart';
import 'package:go_app_client/core/utils/utils.dart';
import 'package:go_app_client/data/models/account_request_model.dart';
import 'package:go_app_client/domain/entities/client_info.dart';
import 'package:go_app_client/presentation/bloc/account/account_bloc.dart';
import 'package:go_app_client/presentation/widgets/main_tool_bar.dart';
import 'package:image_picker/image_picker.dart';

class EditAccountPage extends StatefulWidget {
  const EditAccountPage({super.key});

  @override
  State<EditAccountPage> createState() => _EditAccountPageState();
}

class _EditAccountPageState extends State<EditAccountPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        clientInfo = ModalRoute.of(context)!.settings.arguments as ClientInfo;
        _userNameController.text = clientInfo.fullName;
        _dateController.text =
            Utils.fromTimeStamp(timeStamp: clientInfo.dateOfBirth);
        _phoneNumberController.text = clientInfo.phoneNumber;
      });
    });
  }

  ClientInfo clientInfo = const ClientInfo();
  AccountRequestModel? accountUpdate;

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          const MainToolBar(title: "Chỉnh sửa", isBack: true),
          SingleChildScrollView(
            child: BlocConsumer<AccountBloc, AccountState>(
              listener: (context, state) {
                if(state is AccountLoadSuccess){
                  Navigator.pop(context);
                }
              },
              builder: (context, state) {
                return Column(children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: accountUpdate?.avatar != null
                            ? Image.file(accountUpdate!.avatar!).image
                            : Image.network(clientInfo.avatarUrl).image,
                      ),
                      Positioned(
                          right: 5,
                          bottom: 5,
                          child: GestureDetector(
                            onTap: () {
                              _selectImage(context);
                            },
                            child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 223, 223, 224),
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.edit,
                                )),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildTextField(
                      image: AppImages.icUserName,
                      lable: "Họ tên",
                      controller: _userNameController),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Image(
                          image: AppImages.icCalendar,
                          fit: BoxFit.cover,
                          width: 30,
                          color: AppColors.primaryGreen,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Ngày sinh",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Expanded(
                            child: Align(
                          alignment: Alignment.centerRight,
                          child: TextFormField(
                            textAlign: TextAlign.end,
                            controller: _dateController,
                            readOnly: true,
                            onTap: () {
                              _selectDate();
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Dữ liệu này không được để trống";
                              }
                              return null;
                            },
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Image(
                            image: AppImages.icGender,
                            fit: BoxFit.cover,
                            width: 30,
                            color: AppColors.primaryGreen,
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            "Giới tính",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          Expanded(child: Container()),
                          DropdownButton(
                              underline: Container(),
                              value: accountUpdate?.gender ?? clientInfo.gender,
                              icon: const Icon(Icons.arrow_drop_down),
                              items: const [
                                DropdownMenuItem(
                                    value: true, child: Text("Nam")),
                                DropdownMenuItem(
                                    value: false, child: Text("Nữ")),
                              ],
                              onChanged: (bool? value) {
                                setState(() {
                                  accountUpdate = accountUpdate?.copyWith() ??
                                      AccountRequestModel(
                                          gender: value ?? true);
                                });
                              })
                        ]),
                  ),
                  _buildTextField(
                      image: AppImages.icPhone,
                      lable: "Số điện thoại",
                      controller: _phoneNumberController),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: (){
                      onUpdate();
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.primaryGreen,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          "Gửi",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  )
                ]);
              },
            ),
          )
        ]),
      ),
    );
  }

  void onUpdate() {
    accountUpdate = accountUpdate?.copyWith(
      fullname: _userNameController.text,
      phoneNumber: _phoneNumberController.text,
      dateOfBirth: DateTime.parse(_dateController.text),
    );
    context.read<AccountBloc>().add(AccountEvent.updateAccount(
        accountUpdate ?? const AccountRequestModel()));
  }

  Widget _buildTextField(
      {required ImageProvider<Object> image,
      required String lable,
      required TextEditingController controller,
      bool isRequired = false}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: image,
            fit: BoxFit.cover,
            width: 30,
            color: AppColors.primaryGreen,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            lable,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            width: 50,
          ),
          Expanded(
              child: Align(
            alignment: Alignment.centerRight,
            child: TextFormField(
              textAlign: TextAlign.end,
              controller: controller,
              validator: (value) {
                if (!isRequired) return null;
                if (value == null || value.isEmpty) {
                  return "Dữ liệu này không được để trống";
                }
                return null;
              },
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          )),
        ],
      ),
    );
  }

  Future<void> _selectImage(BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Chọn ảnh"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: const Text("Máy ảnh"),
                    onTap: () {
                      _handleImageSelection(context, ImageSource.camera);
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: const Text("Thư viện"),
                    onTap: () {
                      _handleImageSelection(context, ImageSource.gallery);
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Hủy",
                    style: TextStyle(color: AppColors.itemGreen)),
              ),
            ],
          );
        });
  }

  Future _handleImageSelection(
      BuildContext context, ImageSource imageSource) async {
    final returnedImage = await ImagePicker().pickImage(source: imageSource);
    if (returnedImage == null) return;
    setState(() {
      accountUpdate =
          accountUpdate?.copyWith(avatar: File(returnedImage.path)) ??
              AccountRequestModel(avatar: File(returnedImage.path));
    });
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());
    if (picked != null) {
      _dateController.text = picked.toString().split(" ")[0];
    }
  }
}
