import 'dart:convert';

import 'package:food_project_bwa/models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

part 'user_services.dart';
part 'food_services.dart';
part 'transactions_services.dart';

String baseURlapi = "http://192.168.0.162:9000/api/";
String baseUrlimage = "http://192.168.0.162:9000/laravel/storage/app/public/";
