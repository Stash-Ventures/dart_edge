import 'dart:js_util' as js_util;
import 'package:js/js.dart' as js;

import 'package:js_bindings/js_bindings.dart' as interop;

import '../public/resource.dart';
import '../public/request.dart';

interop.Request requestFromResource(Resource resource) {
  return resource.when(
    (url) => interop.Request(url),
    uri: (uri) => interop.Request(uri.toString()),
    request: (request) => request.delegate,
  );
}

@js.JS('Object.keys')
external List<Object?> objectKeys(Object? object);

@js.JS('undefined')
external Object get jsUndefined;

bool isBasicType(value) {
  if (value == null || value is num || value is bool || value is String) {
    return true;
  }
  return false;
}

T dartify<T>(dynamic jsObject) {
  if (isBasicType(jsObject)) {
    return jsObject as T;
  }

  if (jsObject is List) {
    return jsObject.map(dartify).toList() as T;
  }

  var keys = objectKeys(jsObject);
  var result = <String, dynamic>{};
  for (var key in keys) {
    result[key as String] = dartify(js_util.getProperty(jsObject, key));
  }

  return result as T;
}