import 'package:flutter/material.dart';
import '../navigation/routes.dart';

void navigateToStarted(BuildContext context) => Navigator.pushReplacementNamed(context, Routes.started);
void navigateToChoose(BuildContext context) => Navigator.pushNamed(context, Routes.choose);
