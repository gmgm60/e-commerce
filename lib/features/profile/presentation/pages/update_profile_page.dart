import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/widgets/app_elevated_button.dart';
import 'package:ecommerce/core/presentation/widgets/app_network_image.dart';
import 'package:ecommerce/core/presentation/widgets/app_text_form_field.dart';
import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/auth/domain/entities/user.dart';
import 'package:ecommerce/features/profile/domain/entities/update_user/update_user.dart';
import 'package:ecommerce/features/profile/presentation/bloc/profile_cubit/profile_cubit.dart';
import 'package:ecommerce/features/profile/presentation/bloc/profile_cubit/profile_states.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.tr.updateProfile,
        ),
      ),
      body: UpdateProfileBody(
        user: user,
      ),
    );
  }
}

class UpdateProfileBody extends StatefulWidget {
  const UpdateProfileBody({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  State<UpdateProfileBody> createState() => _UpdateProfileBodyState();
}

class _UpdateProfileBodyState extends State<UpdateProfileBody> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController addressController;

  File? userImage;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(
        text: (widget.user.name.isEmpty) ? '' : widget.user.name);
    phoneController = TextEditingController(
        text: (widget.user.phone.isEmpty) ? '' : widget.user.phone);
    addressController = TextEditingController(
        text: (widget.user.address.isEmpty) ? '' : widget.user.address);
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    phoneController.dispose();
    addressController.dispose();
    userImage = null;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: userImage != null
                      ? Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.file(userImage!).image)),
                        )
                      : Hero(
                          tag: 'USER_IMAGE_TAG',
                          child: AppNetworkImage(
                            url: widget.user.image,
                          ),
                        ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 10),
                  child: IconButton(
                    onPressed: () {
                      pickImage();
                    },
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: FaIcon(
                        FontAwesomeIcons.camera,
                        color: Colors.white.withOpacity(.6),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            AppTextFormField(
              controller: nameController,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return context.tr.nameFieldValidation;
                }
                return null;
              },
              icon: Icons.person,
              inputType: TextInputType.name,
              label: context.tr.name,
            ),
            const SizedBox(
              height: 20,
            ),
            AppTextFormField(
              controller: phoneController,
              validate: (value) {
                if (value == null || value.length < 11) {
                  return context.tr.phoneFieldValidation;
                }
                return null;
              },
              icon: Icons.phone,
              inputType: TextInputType.phone,
              label: context.tr.phone,
            ),
            const SizedBox(
              height: 20,
            ),
            AppTextFormField(
              controller: addressController,
              validate: (value) {
                if (value == null || value.isEmpty) {
                  return context.tr.addressFieldValidation;
                }
                return null;
              },
              icon: Icons.location_on_outlined,
              inputType: TextInputType.text,
              label: context.tr.address,
            ),
            const SizedBox(
              height: 30,
            ),
            BlocProvider(
                create: (context) => getIt<ProfileCubit>(),
                child: BlocConsumer<ProfileCubit, ProfileStates>(
                  listener: (context, state) {
                    state.whenOrNull(updated: (user) {
                      AutoRouter.of(context).pop();
                      BlocProvider.of<ProfileCubit>(context).getUser();
                    }, error: (error) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(error)));
                    });
                  },
                  builder: (context, state) {
                    return state.maybeWhen(orElse: () {
                      return AppElevatedButton(
                          isLoading: state.maybeWhen(
                            orElse: () => false,
                            loading: () => true,
                            loaded: (_) => true,
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              UpdateUser updateUser = UpdateUser(
                                name: (nameController.text != widget.user.name)
                                    ? nameController.text
                                    : null,
                                phone:
                                    (phoneController.text != widget.user.phone)
                                        ? phoneController.text
                                        : null,
                                address: (addressController.text !=
                                        widget.user.address)
                                    ? addressController.text
                                    : null,
                                image: userImage,
                              );
                              BlocProvider.of<ProfileCubit>(context)
                                  .updateUser(updateUser: updateUser);

                            }
                          },
                          text: context.tr.update);
                    });
                  },
                )),
          ],
        ),
      ),
    );
  }

  Future<void> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    // Capture a photo
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        userImage = File(pickedFile.path);
      });
    }
  }
}
