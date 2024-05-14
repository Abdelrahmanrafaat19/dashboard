import 'package:dashboard/feature/book_appointment/presentation/view/widget/make_appointment_body.dart';
import 'package:flutter/material.dart';

class MakeBookAppointment extends StatelessWidget {
  const MakeBookAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MakeAppointmentBody(),
    );
  }
}
