import 'package:driving_trail/components/add_button.dart';
import 'package:driving_trail/components/delete_button.dart';
import 'package:flutter/material.dart';
import 'package:driving_trail/utils/page_utils.dart';
import 'dart:async';

class CarCard extends StatefulWidget {
  final String carName;
  final DateTime date;
  Duration bookTime;

  CarCard({
    required this.carName,
    required this.date,
    required this.bookTime,
    key,
  }) : super(key: key);

  @override
  State<CarCard> createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  Duration timeLeft = Duration.zero;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    timeLeft = widget.date.difference(DateTime.now()) + widget.bookTime;
    _startTimer();
  }

  void _startTimer() {
    const oneMinute = Duration(minutes: 1);
    _timer = Timer.periodic(oneMinute, (_) {
      setState(() {
        timeLeft = widget.date.difference(DateTime.now()) + widget.bookTime;
      });
      print(timeLeft.inMinutes);
      if (timeLeft.inMinutes <= 0) {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: ScreenUtil.height * 0.008,
        horizontal: ScreenUtil.width * 0.025,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.03 * ScreenUtil.width),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 0.01 * ScreenUtil.width,
              spreadRadius: 0.01 * ScreenUtil.width,
              offset: Offset(0.0, 0.007 * ScreenUtil.height),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(
          vertical: ScreenUtil.height * 0.005,
          horizontal: ScreenUtil.width * 0.03,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.carName,
              style: TextStyle(
                fontSize: 0.07 * ScreenUtil.width,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              timeLeft.inMinutes > 0 ? "${timeLeft.inMinutes} min" : "Time up",
              style: TextStyle(
                fontSize: 0.03 * ScreenUtil.width,
                color: timeLeft.inMinutes > 0 ? Colors.green : Colors.red,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AddButton(
                  onPressed: () {},
                  size: 0.07 * ScreenUtil.width,
                ),
                DeleteButton(
                  onPressed: () {},
                  size: 0.07 * ScreenUtil.width,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
