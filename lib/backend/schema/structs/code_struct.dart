// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CodeStruct extends BaseStruct {
  CodeStruct({
    String? code,
  }) : _code = code;

  // "code" field.
  String? _code;
  String get code => _code ?? 'qw';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  static CodeStruct fromMap(Map<String, dynamic> data) => CodeStruct(
        code: data['code'] as String?,
      );

  static CodeStruct? maybeFromMap(dynamic data) =>
      data is Map ? CodeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
      }.withoutNulls;

  static CodeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CodeStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CodeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CodeStruct && code == other.code;
  }

  @override
  int get hashCode => const ListEquality().hash([code]);
}

CodeStruct createCodeStruct({
  String? code,
}) =>
    CodeStruct(
      code: code,
    );
