import 'dart:convert';

import 'package:food_project_bwa/models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

part 'user_services.dart';
part 'food_services.dart';
part 'transactions_services.dart';

String baseURlapi = "https://dev.usepdvlpr.online/api/";
String baseUrlimage = "https://dev.usepdvlpr.online/laravel/storage/app/public";
