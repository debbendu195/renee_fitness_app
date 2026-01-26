import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:renee_flutter_app/utils/app_const/app_const.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button.dart';
import 'package:renee_flutter_app/view/components/custom_button/custom_button_two.dart';
import 'package:renee_flutter_app/view/components/custom_netwrok_image/custom_network_image.dart';
import 'package:renee_flutter_app/view/components/custom_text/custom_text.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../components/custom_nav_bar/navbar.dart';
import '../../components/custom_royel_appbar/custom_royel_appbar.dart';

class SelectDateTimeScreen extends StatefulWidget {
  const SelectDateTimeScreen({super.key});

  @override
  _SelectDateTimeScreenState createState() => _SelectDateTimeScreenState();
}

class _SelectDateTimeScreenState extends State<SelectDateTimeScreen> {
  DateTime selectedDate = DateTime.now();
  String selectedTime = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Select Date & Time",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 1,
                color: AppColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CustomNetworkImage(
                        imageUrl: AppConstants.ntrition,
                        height: 72.h,
                        width: 72.w,
                        borderRadius: BorderRadius.all(Radius.circular(13.r)),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Personal Training",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          CustomText(
                            text: "45 min • \$35",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textClr,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),

              // Calendar Section
              Text(
                'Choose Date',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10.h),
              CalendarWidget(
                selectedDate: selectedDate,
                onDateSelected: (date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
              ),

              SizedBox(height: 20.h),

              // Available Times Section
              Text(
                'Available Times',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              CustomText(
                text: "Monday, December 16, 2024",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.textClr,
              ),
              CustomText(
                text: "Morning",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(6, (index) {
                  return TimeSlotButton(
                    time: getMorningTimes()[index],
                    isSelected: index == 3, // Select 2:00 PM as an example
                    onTap: () {
                      setState(() {});
                    },
                  );
                }),
              ),
          SizedBox(height: 20),
          Text('Afternoon', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(6, (index) {
              return TimeSlotButton(
                time: getAfternoonTimes()[index],
                isSelected: index == 3, // Select 2:00 PM as an example
                onTap: () {
                  setState(() {});
                },
              );
            }),),
              SizedBox(height: 10),
          Container(
            width: MediaQuery.sizeOf(context).width,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xffEFF6FF),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(text: "Monday, Dec 16",fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.primary,),
                    CustomText(text: "2:00 PM - 2:45 PM",fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.primary,),
                  ],
                ),
                Column(
                  children: [
                    CustomText(text: "\$35",fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.primary,),
                    CustomText(text: "45 min",fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.primary,),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 1,color: AppColors.black,),
              SizedBox(height: 10),
              Row(
                children: [
                  Flexible(child: CustomButtonTwo(onTap: (){},title: "Cancel",fillColor:Color(0xff595959),)),
                  SizedBox(width: 16,),
                  Flexible(child: CustomButton(onTap: (){
                    Get.toNamed(AppRoutes.personalDetailsScreen);
                  },title: "Continue",)),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(currentIndex: 2),
    );
  }
  List<String> getMorningTimes() {
    return ['9:00 AM', '9:30 AM', '10:00 AM', '10:30 AM', '11:00 AM', '11:30 AM'];
  }

  List<String> getAfternoonTimes() {
    return ['12:00 PM', '12:30 PM', '1:00 PM', '1:30 PM', '2:00 PM', '2:30 PM'];
  }
}
class TimeSlotButton extends StatelessWidget {
  final String time;
  final bool isSelected;
  final VoidCallback onTap;

  const TimeSlotButton({super.key, required this.time, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        width: 100,
        height: 80,
       padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            time,
            style: TextStyle(
              fontSize: 14,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class CalendarWidget extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDateSelected;

  const CalendarWidget({super.key,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1,
            ),
            itemCount: 31,
            itemBuilder: (context, index) {
              final day = index + 1;
              final isSelected = selectedDate.day == day;
              return GestureDetector(
                onTap: () {
                  onDateSelected(
                    DateTime(selectedDate.year, selectedDate.month, day),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(4.r),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blue : Colors.transparent,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Text(
                    '$day',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class AvailableTimesWidget extends StatelessWidget {
  final Map<String, List<String>> availableTimes;
  final Function(String) onTimeSelected;

  const AvailableTimesWidget({
    required this.availableTimes,
    required this.onTimeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: availableTimes.entries.map((entry) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              entry.key,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10.h),
            Row(
              children: entry.value.map((time) {
                return Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: ElevatedButton(
                    onPressed: () => onTimeSelected(time),
                    child: Text(time),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 10.h),
          ],
        );
      }).toList(),
    );
  }
}
