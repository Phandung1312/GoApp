import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_app_driver/config/colors.dart';
import 'package:go_app_driver/config/images.dart';
import 'package:go_app_driver/config/routes.dart';
import 'package:go_app_driver/domain/entities/enum/enum.dart';
import 'package:go_app_driver/domain/entities/register_info.dart';
import 'package:go_app_driver/presentation/bloc/register/register_bloc.dart';
import 'package:go_app_driver/presentation/widgets/main_tool_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toast/toast.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameKey = GlobalKey<FormFieldState<String>>();
  final _phoneNumberKey = GlobalKey<FormFieldState<String>>();
  final _drivingLicense = GlobalKey<FormFieldState<String>>();
  final _licensePlate = GlobalKey<FormFieldState<String>>();
  final _cardIdKey = GlobalKey<FormFieldState<String>>();

  final _nameController = TextEditingController();
  final _idCardController = TextEditingController();
  final _phoneNunmberController = TextEditingController();
  final _drivingLicenseController = TextEditingController();
  final _licensePlateController = TextEditingController();

  final TextEditingController _dateController = TextEditingController();
  bool genderValue = true;
  VehicleType vehicleType = VehicleType.MOTORCYCLE;
  File? _avatar;
  File? _fontCardImage;
  File? _behindCardImage;
  File? _fontLiscenseImage;
  File? _behindLiscenseImage;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
        
          Toast.show("Đăng kí tài xế thành công",
              duration: Toast.lengthShort, gravity: Toast.bottom);
          Navigator.pushNamedAndRemoveUntil(
              context, Paths.pending, (route) => route.settings.name == Paths.login);
        }
      },
      builder: (context, state) => SafeArea(
          child: Scaffold(
        body: Column(mainAxisSize: MainAxisSize.min, children: [
          const MainToolBar(title: "Đăng kí tài xế", isBack: false),
          Flexible(
              flex: 1,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(mainAxisSize: MainAxisSize.max, children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            _registerFiled(
                                key: _nameKey,
                                editingController: _nameController,
                                lableText: "Tên",
                                hintText: "Ví dụ: Nguyễn Văn A",
                                errorText: "Họ và tên không được để trống",
                                icon: Icons.book_outlined),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const Icon(Icons.calendar_month),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: _dateController,
                                    decoration: const InputDecoration(
                                      labelText: "Ngày sinh",
                                      labelStyle:
                                          TextStyle(color: Colors.black),
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
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.people,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "Giới tính",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                  child: Container(
                                width: double.infinity,
                              )),
                              DropdownButton(
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
                                  })
                            ]),
                            _registerFiled(
                                key: _cardIdKey,
                                editingController: _idCardController,
                                lableText: "Số CMND/CCCD",
                                hintText: "Ví dụ: 04429398334",
                                errorText: "Số CMND/CCCD không được để trống",
                                icon: Icons.contact_emergency_outlined),
                            _registerFiled(
                                key: _phoneNumberKey,
                                editingController: _phoneNunmberController,
                                lableText: "Số điện thoại",
                                hintText: "Ví dụ: 0823439392",
                                errorText: "Số điện thoại không được để trống",
                                icon: Icons.phone),
                            _registerFiled(
                                key: _drivingLicense,
                                editingController: _drivingLicenseController,
                                lableText: "Số giấy phép lái xe",
                                hintText: "Ví dụ: 03273483848383",
                                errorText:
                                    "Số giấy phép lái xe không được để trống",
                                imageIcon: AppImages.icDrivingLicense1),
                            _registerFiled(
                                key: _licensePlate,
                                editingController: _licensePlateController,
                                lableText: "Biến số lái xe",
                                hintText: "Ví dụ: 43A-H19999",
                                errorText: "Biến số lái xe không được để trống",
                                imageIcon: AppImages.icDrivingLicense2),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.portrait,
                                      color: Colors.black,
                                    ),
                                    SizedBox(width: 20),
                                    Text("Ảnh chân dung",
                                        style: TextStyle(fontSize: 16)),
                                  ],
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                                onTap: () {
                                  _selectImage(context, ImageOptions.avatar);
                                },
                                child: _avatar != null
                                    ? Image.file(
                                        _avatar!,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      )
                                    : const Image(
                                        image: AppImages.icAddImage,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      )),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.contact_emergency_outlined,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 20),
                                  Text("CCCD/CMND",
                                      style: TextStyle(fontSize: 16)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          _selectImage(
                                              context, ImageOptions.fontCard);
                                        },
                                        child: _fontCardImage != null
                                            ? Image.file(
                                                _fontCardImage!,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              )
                                            : const Image(
                                                image: AppImages.icAddImage,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text("Mặt trước",
                                        style: TextStyle(fontSize: 16))
                                  ],
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          _selectImage(
                                              context, ImageOptions.behindCard);
                                        },
                                        child: _behindCardImage != null
                                            ? Image.file(
                                                _behindCardImage!,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              )
                                            : const Image(
                                                image: AppImages.icAddImage,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text("Mặt sau",
                                        style: TextStyle(fontSize: 16))
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.credit_card,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 20),
                                  Text("Giấy phép lái xe",
                                      style: TextStyle(fontSize: 16)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          _selectImage(context,
                                              ImageOptions.fontLicense);
                                        },
                                        child: _fontLiscenseImage != null
                                            ? Image.file(
                                                _fontLiscenseImage!,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              )
                                            : const Image(
                                                image: AppImages.icAddImage,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text("Mặt trước",
                                        style: TextStyle(fontSize: 16))
                                  ],
                                ),
                                Column(
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          _selectImage(context,
                                              ImageOptions.behindLicense);
                                        },
                                        child: _behindLiscenseImage != null
                                            ? Image.file(
                                                _behindLiscenseImage!,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              )
                                            : const Image(
                                                image: AppImages.icAddImage,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text("Mặt sau",
                                        style: TextStyle(fontSize: 16))
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(children: [
                              const Row(
                                children: [
                                  Image(
                                    image: AppImages.icVehicleType,
                                    fit: BoxFit.cover,
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "Loại xe",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                  child: Container(
                                width: double.infinity,
                              )),
                              DropdownButton(
                                  underline: Container(),
                                  value: vehicleType,
                                  icon: const Icon(Icons.arrow_drop_down),
                                  items: const [
                                    DropdownMenuItem(
                                        value: VehicleType.MOTORCYCLE,
                                        child: Text("Xe máy")),
                                    DropdownMenuItem(
                                        value: VehicleType.CAR,
                                        child: Text("Ô tô")),
                                  ],
                                  onChanged: (VehicleType? value) {
                                    setState(() {
                                      vehicleType =
                                          value ?? VehicleType.MOTORCYCLE;
                                    });
                                  })
                            ]),
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
                          if (_formKey.currentState!.validate() &&
                              _avatar != null &&
                              _fontLiscenseImage != null &&
                              _behindLiscenseImage != null &&
                              _fontLiscenseImage != null &&
                              _behindLiscenseImage != null) {
                            onRegister();
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
      )),
    );
  }

  Widget _registerFiled(
      {required GlobalKey<FormFieldState<String>> key,
      required String lableText,
      required String? hintText,
      required String errorText,
      required TextEditingController editingController,
      IconData? icon,
      ImageProvider<Object>? imageIcon}) {
    return Row(
      children: [
        icon != null
            ? Icon(
                icon,
              )
            : Image(
                image: imageIcon!,
                fit: BoxFit.cover,
                height: 25,
              ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            key: key,
            controller: editingController,
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
                labelText: lableText,
                hintText: hintText,
                labelStyle: const TextStyle(color: Colors.black),
                hintStyle: const TextStyle(color: AppColors.hintText)),
          ),
        ),
      ],
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

  Future<void> _selectImage(
      BuildContext context, ImageOptions imageOption) async {
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
                          context, ImageSource.camera, imageOption);
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

  Future _handleImageSelection(BuildContext context, ImageSource imageSource,
      ImageOptions imageOption) async {
    final returnedImage = await ImagePicker().pickImage(source: imageSource);
    if (returnedImage == null) return;
    setState(() {
      switch (imageOption) {
        case ImageOptions.avatar:
          _avatar = File(returnedImage.path);
          break;
        case ImageOptions.fontCard:
          _fontCardImage = File(returnedImage.path);
          break;
        case ImageOptions.behindCard:
          _behindCardImage = File(returnedImage.path);
          break;
        case ImageOptions.fontLicense:
          _fontLiscenseImage = File(returnedImage.path);
          break;
        case ImageOptions.behindLicense:
          _behindLiscenseImage = File(returnedImage.path);
          break;
        default:
          break;
      }
    });
  }

  void onRegister() {
    var registerInfo = RegisterInfo(
      fullname: _nameController.text,
      dateOfBirth: DateTime.parse(_dateController.text),
      phoneNumber: _phoneNunmberController.text,
      gender: genderValue,
      idCard: _idCardController.text,
      drivingLicense: _drivingLicenseController.text,
      licensePlate: _licensePlateController.text,
      vehicleType: vehicleType,
      avatar: _avatar!,
      drivingLicenseImages: <File>[_fontLiscenseImage!, _behindLiscenseImage!],
      idCardImages: <File>[_fontCardImage!, _behindCardImage!],
    );
    context
        .read<RegisterBloc>()
        .add(SendRegisterInfo(registerInfo: registerInfo));
  }
}

enum ImageOptions { avatar, fontLicense, behindLicense, fontCard, behindCard }
