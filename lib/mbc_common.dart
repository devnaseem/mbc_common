library mbc_common;

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mbc_common/widgets/skelton_loader/skeleton_text.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:equatable/equatable.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'exception/failure.dart';
part 'exception/mixin/dio_exception_mixin.dart';

part 'extensions/string_hardcoded.dart';

part 'localization/app_localization.dart';

part 'constants//color_constants.dart';

part 'widgets/skelton_loader/widget_skeleton_item_loader.dart';