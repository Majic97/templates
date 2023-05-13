import 'package:json_annotation/json_annotation.dart';

part 'entities.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ExampleEntity {
  ExampleEntity({this.name});

  final String? name;

  factory ExampleEntity.fromJson(Map<String, dynamic> json) => _$ExampleEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleEntityToJson(this);
}
