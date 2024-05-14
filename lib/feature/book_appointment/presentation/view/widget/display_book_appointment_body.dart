import 'package:dashboard/core/method.dart';
import 'package:dashboard/core/scal_factor_method.dart';
import 'package:dashboard/core/theme/color.dart';
import 'package:dashboard/feature/book_appointment/data/diaplay_book_appointment_repo/diaplay_book_appointment_repo_imple.dart';
import 'package:dashboard/feature/book_appointment/presentation/bloc/display_book_appointment_bloc/display_book_appointment_cubit.dart';
import 'package:dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollable_table_view/scrollable_table_view.dart';

class DiaplayBookAppointMentBody extends StatefulWidget {
  DiaplayBookAppointMentBody({super.key});

  @override
  State<DiaplayBookAppointMentBody> createState() =>
      _DiaplayBookAppointMentBodyState();
}

class _DiaplayBookAppointMentBodyState
    extends State<DiaplayBookAppointMentBody> {
  final List<Map> data = [
    {
      "name": "Shaoib",
      "phone": "01063103655",
      "email": "Shaoib@gmail.com",
      "age": "22",
      "Perfered_Contact": "Phone",
      "Services": "any thing",
      "Service_Type": "any Thing of Services",
      "message": "",
      "createdAt": "2024-05-14T07:43:45.601Z",
      "updatedAt": "2024-05-14T07:43:45.601Z",
      "publishedAt": "2024-05-14T07:43:45.600Z"
    },
    {
      "name": "ddd",
      "phone": "ddd",
      "email": "dd",
      "age": "dd",
      "Perfered_Contact": "Phone",
      "Services": "any thing",
      "Service_Type": "any Thing of Services",
      "message": "ddd",
      "createdAt": "2024-05-14T07:49:43.694Z",
      "updatedAt": "2024-05-14T07:49:43.694Z",
      "publishedAt": "2024-05-14T07:49:43.693Z"
    },
  ];
  bool currrent = false;
  int currentIndex = 0;
  @override
  void initState() {
    BlocProvider.of<DisplayBookAppointmentCubit>(context)
        .displayBookAppointment();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayBookAppointmentCubit,
        DisplayBookAppointmentState>(
      builder: (context, state) {
        if (state is DisplayBookAppointmentIsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is DisplayBookAppointmentSuccess) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
              20.r,
            )),
            width: double.infinity,
            child: ScrollableTableView(
              headerBackgroundColor: Colors.green.shade50,
              rowDividerHeight: responsiveWeidth(context, 2),
              headers: [
                TableViewHeader(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  minWidth: 300,
                  alignment: Alignment.centerLeft,
                  label: S.of(context).username,
                ),
                TableViewHeader(
                  minWidth: 200,
                  alignment: Alignment.centerLeft,
                  label: S.of(context).email,
                ),
                TableViewHeader(
                  minWidth: 200,
                  alignment: Alignment.centerLeft,
                  label: S.of(context).phone,
                ),
                TableViewHeader(
                  minWidth: 200,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.centerLeft,
                  label: S.of(context).service,
                ),
                TableViewHeader(
                  minWidth: 200,
                  alignment: Alignment.centerLeft,
                  label: S.of(context).PerferedContact,
                ),
                TableViewHeader(
                  minWidth: 200,
                  alignment: Alignment.centerLeft,
                  label: S.of(context).message,
                ),
                TableViewHeader(
                  minWidth: 200,
                  alignment: Alignment.centerLeft,
                  label: S.of(context).delete,
                ),
              ],
              rows: List.generate(
                DisplayBookAppointmentRepoImple
                    .bookAppointmentModel!.data!.length,
                (index) => TableViewRow(
                  height: calculateHeight(
                      context,
                      DisplayBookAppointmentRepoImple.bookAppointmentModel!
                              .data![index].attributes!.message ??
                          ""),
                  backgroundColor: currrent == true
                      ? currentIndex != index
                          ? Colors.transparent
                          : const Color.fromARGB(255, 199, 202, 211)
                      : Colors.transparent,
                  cells: [
                    TableViewCell(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (currentIndex == index) {
                              currrent = !currrent;
                            } else {
                              currrent = true;
                              currentIndex = index;
                            }
                          });
                        },
                        child: Text(DisplayBookAppointmentRepoImple
                                .bookAppointmentModel!
                                .data![index]
                                .attributes!
                                .name ??
                            ""),
                      ),
                    ),
                    TableViewCell(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (currentIndex == index) {
                              currrent = !currrent;
                            } else {
                              currrent = true;
                              currentIndex = index;
                            }
                          });
                        },
                        child: Text(
                          DisplayBookAppointmentRepoImple.bookAppointmentModel!
                                  .data![index].attributes!.email ??
                              "",
                        ),
                      ),
                    ),
                    TableViewCell(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              if (currentIndex == index) {
                                currrent = !currrent;
                              } else {
                                currrent = true;
                                currentIndex = index;
                              }
                            });
                          },
                          child: Text(DisplayBookAppointmentRepoImple
                                  .bookAppointmentModel!
                                  .data![index]
                                  .attributes!
                                  .phone ??
                              "")),
                    ),
                    TableViewCell(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              if (currentIndex == index) {
                                currrent = !currrent;
                              } else {
                                currrent = true;
                                currentIndex = index;
                              }
                            });
                          },
                          child: Text(DisplayBookAppointmentRepoImple
                                  .bookAppointmentModel!
                                  .data![index]
                                  .attributes!
                                  .serviceType ??
                              "")),
                    ),
                    TableViewCell(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              if (currentIndex == index) {
                                currrent = !currrent;
                              } else {
                                currrent = true;
                                currentIndex = index;
                              }
                            });
                          },
                          child: Text(DisplayBookAppointmentRepoImple
                                  .bookAppointmentModel!
                                  .data![index]
                                  .attributes!
                                  .perferedContact ??
                              "")),
                    ),
                    TableViewCell(
                      alignment: Alignment.centerLeft,
                      child: Text(DisplayBookAppointmentRepoImple
                              .bookAppointmentModel!
                              .data![index]
                              .attributes!
                              .message ??
                          ""),
                    ),
                    TableViewCell(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            data.removeAt(index);
                          });
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (state is DisplayBookAppointmentFailure) {
          return Center(
            child: Text(state.message.toString()),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

double calculateHeight(BuildContext context, String text) {
  // Approximate height calculation based on the text length and context
  TextPainter textPainter = TextPainter(
    text: TextSpan(text: text, style: DefaultTextStyle.of(context).style),
    maxLines: null,
    textDirection: TextDirection.ltr,
  )..layout(minWidth: 0, maxWidth: MediaQuery.of(context).size.width);
  return textPainter.size.height + 16; // Adding some padding
}
