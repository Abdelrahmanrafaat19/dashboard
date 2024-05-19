import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/feature/book_appointment/data/diaplay_book_appointment_repo/diaplay_book_appointment_repo_imple.dart';
import 'package:dashboard/feature/book_appointment/presentation/bloc/delete_book_appointment_bloc/delete_book_appointment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DeleteButton extends StatefulWidget {
  final int index;
  const DeleteButton({
    super.key,
    required this.index,
  });

  @override
  State<DeleteButton> createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteBookAppointmentCubit, DeleteBookAppointmentState>(
      listener: (context, state) {
        Fluttertoast.showToast(
            msg: "The Deleted is Success",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: getResponsiveFont(context, fontSize: 15));
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            BlocProvider.of<DeleteBookAppointmentCubit>(context)
                .deleteBookAppointmentMethod(DisplayBookAppointmentRepoImple
                    .bookAppointmentModel!.data![widget.index].id);
            DisplayBookAppointmentRepoImple.bookAppointmentModel!.data!
                .removeAt(widget.index);
            setState(() {});
          },
          child: CircleAvatar(
            radius: 10.r,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.delete,
              color: SharedColor.whiteColor,
              size: getResponsiveFont(context, fontSize: 15),
            ),
          ),
        );
      },
    );
  }
}
