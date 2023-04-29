/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Object type in your schema. */
@immutable
class Object extends Model {
  static const classType = const ObjectType();
  final String id;
  final String value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Object._internal({@required this.id, this.value});

  factory Object({String id, String value}) {
    return Object._internal(id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(other, this)) return true;
  //   return other is Object && id == other.id && value == other.value;
  // }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Object {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + "$value");
    buffer.write("}");

    return buffer.toString();
  }

  Object copyWith({String id, String value}) {
    return Object(id: id ?? this.id, value: value ?? this.value);
  }

  Object.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        value = json['value'];

  Map<String, dynamic> toJson() => {'id': id, 'value': value};

  static final QueryField ID = QueryField(fieldName: "object.id");
  static final QueryField VALUE = QueryField(fieldName: "value");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Object";
    modelSchemaDefinition.pluralName = "Objects";

    modelSchemaDefinition.authRules = [
      AuthRule(
          authStrategy: AuthStrategy.PUBLIC,
          operations: [ModelOperation.CREATE, ModelOperation.UPDATE, ModelOperation.DELETE, ModelOperation.READ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Object.VALUE, isRequired: false, ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class ObjectType extends ModelType<Object> {
  const ObjectType();

  @override
  Object fromJson(Map<String, dynamic> jsonData) {
    return Object.fromJson(jsonData);
  }
}
