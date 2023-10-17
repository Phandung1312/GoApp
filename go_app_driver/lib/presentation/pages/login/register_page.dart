import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/config/images.dart';
import 'package:go_app_driver/presentation/widgets/main_tool_bar.dart';
import 'package:image_picker/image_picker.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameKey = GlobalKey<FormFieldState<String>>();
  final _phoneNumberKey = GlobalKey<FormFieldState<String>>();
  final _addressKey = GlobalKey<FormFieldState<String>>();
  final _cardIdKey = GlobalKey<FormFieldState<String>>();
  final TextEditingController _dateController = TextEditingController();
  bool genderValue = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          const MainToolBar(title: "Đăng kí tài xế",isBack: false),
          Flexible(
              flex: 1,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.max, 
                  children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            _registerFiled(
                                _nameKey,
                                "Tên",
                                "Ví dụ: Nguyễn Văn A",
                                "Họ và tên không được để trống",
                                Icons.book_outlined),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _dateController,
                              decoration: const InputDecoration(
                                labelText: "Ngày sinh",
                                labelStyle: TextStyle(color: Colors.black),
                                prefixIconColor: Colors.black,
                                prefixIcon: Icon(Icons.calendar_today),
                              ),
                              readOnly: true,
                              onTap: () {
                                _selectDate();
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Chọn ngày sinh";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 40,
                              width: double.infinity,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                const Positioned(
                                    left: 0,
                                    child: Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.people,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Giới tính",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    )),
                                Positioned(
                                    right: 0,
                                    child: DropdownButton(
                                        underline: Container(),
                                        value: genderValue,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        items: const [
                                          DropdownMenuItem(
                                              value: true, child: Text("Nam")),
                                          DropdownMenuItem(
                                              value: false, child: Text("Nữ")),
                                        ],
                                        onChanged: (bool? value) {
                                          setState(() {
                                            genderValue = value ?? true;
                                          });
                                        }))
                              ]),
                            ),
                            _registerFiled(
                                _cardIdKey,
                                "Số CMND/CCCD",
                                "Ví dụ: 04429398334",
                                "Số CMND/CCCD không được để trống",
                                Icons.contact_emergency_outlined),
                            _registerFiled(
                                _phoneNumberKey,
                                "Số điện thoại",
                                "Ví dụ: 0823439392",
                                "Số điện thoại không được để trống",
                                Icons.phone),
                            _registerFiled(
                                _addressKey,
                                "Địa chỉ",
                                "Ví dụ: 28 Phạm Văn Đồng",
                                "Địa chỉ không được để trống",
                                Icons.share_location_outlined),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.portrait,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Text("Ảnh chân dung",
                                        style: TextStyle(fontSize: 16)),
                                  ],
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              child: InkWell(
                                  onTap: () {
                                    _selectImage(context, ImageOptions.avatar);
                                  },
                                  child: _selectedAvatar != null
                                      ? Image.file(
                                          _selectedAvatar!,
                                          width: 150,
                                          fit: BoxFit.cover,
                                        )
                                      : const Image(
                                          image: AppImages.icAddImage,
                                          width: 150,
                                          fit: BoxFit.cover,
                                        )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.credit_card_outlined,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Text("Giấy phép lái xe",
                                      style: TextStyle(fontSize: 16)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              child: InkWell(
                                  onTap: () {
                                    _selectImage(context, ImageOptions.license );
                                  },
                                  child: _selectedLisence != null
                                      ? Image.file(
                                          _selectedLisence!,
                                          width: 150,
                                          fit: BoxFit.cover,
                                        )
                                      : const Image(
                                          image: AppImages.icAddImage,
                                          width: 150,
                                          fit: BoxFit.cover,
                                        )),
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {

                          }
                        },
                        style: ElevatedButton.styleFrom(

                            padding: const EdgeInsets.all(20.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            backgroundColor: AppColors.primaryGreen),
                        child: const Text(
                          "Gửi hồ sơ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ]),
              ))
        ]),
      ),
    ));
  }

  Widget _registerFiled(GlobalKey<FormFieldState<String>> key, String lableText,
      String? hintText, String errorText, IconData icon) {
    return TextFormField(
      key: key,
      onChanged: (_) {
        key.currentState!.validate();
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }
        return null;
      },
      decoration: InputDecoration(
          focusColor: AppColors.primaryGreen,
          prefixIcon: Icon(icon),
          prefixIconColor: Colors.black,
          labelText: lableText,
          hintText: hintText,
          labelStyle: const TextStyle(color: Colors.black),
          hintStyle: const TextStyle(color: AppColors.hintText)),
    );
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
  File? _selectedAvatar;
  File? _selectedLisence;
  Future<void> _selectImage(BuildContext context, ImageOptions imageOption) async {
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
                      _handleImageSelection(
                          context, ImageSource.camera,  imageOption);
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: const Text("Thư viện"),
                    onTap: () {
                      _handleImageSelection(
                          context, ImageSource.gallery, imageOption);
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
      BuildContext context, ImageSource imageSource, ImageOptions imageOption) async {
    final returnedImage = await ImagePicker().pickImage(source: imageSource);
    if (returnedImage == null) return;
    setState(() {
      if(imageOption == ImageOptions.avatar){
        _selectedAvatar = File(returnedImage.path);
      }
      else{
        _selectedLisence = File(returnedImage.path);
      }
    });
  }
}


enum ImageOptions{
  avatar,
  license
}