// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormDataEntryValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormDataEntryFile file) file,
    required TResult Function(String value) string,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$FileValue implements FileValue {
  const _$FileValue(this.file);

  @override
  final FormDataEntryFile file;

  @override
  String toString() {
    return 'FormDataEntryValue.file(file: $file)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormDataEntryFile file) file,
    required TResult Function(String value) string,
  }) {
    return file(this.file);
  }
}

abstract class FileValue implements FormDataEntryValue {
  const factory FileValue(final FormDataEntryFile file) = _$FileValue;

  FormDataEntryFile get file;
}

/// @nodoc

class _$StringValue implements StringValue {
  const _$StringValue(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'FormDataEntryValue.string(value: $value)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormDataEntryFile file) file,
    required TResult Function(String value) string,
  }) {
    return string(value);
  }
}

abstract class StringValue implements FormDataEntryValue {
  const factory StringValue(final String value) = _$StringValue;

  String get value;
}