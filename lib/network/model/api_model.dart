import 'package:json_annotation/json_annotation.dart';
part 'api_model.g.dart';
@JsonSerializable()
class ApiModel{
int albumId;
int id;
String title;
String url;
String thumbnailUrl;
ApiModel({this.albumId,this.id,this.title,this.thumbnailUrl});
factory ApiModel.fromJson(Map<String, dynamic> json) => _$ApiModelFromJson(json);
Map<String ,dynamic> toJson() => _$ApiModelToJson(this);

}