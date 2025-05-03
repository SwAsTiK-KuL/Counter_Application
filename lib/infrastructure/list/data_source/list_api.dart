import 'package:counter_app/infrastructure/List/dto/resource_data_dto.dart';
import 'package:dio/dio.dart';

class ResourceResponse {
  final List<ResourceDataDto> data;

  ResourceResponse({required this.data});

  factory ResourceResponse.fromJson(Map<String, dynamic> json) {
    return ResourceResponse(
      data: List<ResourceDataDto>.from(
        json['data'].map((x) => ResourceDataDto.fromJson(x)),
      ),
    );
  }
}

class ResourceApi {
  final Dio dio = Dio();

  Future<ResourceResponse> fetchResources() async {
    final response = await dio.get(
      'https://reqres.in/api/unknown',
      options: Options(
        headers: {
          'x-api-key': 'reqres-free-v1',
        },
      ),
    );

    if (response.statusCode == 200) {
      return ResourceResponse.fromJson(response.data);
    } else {
      throw Exception('Failed to fetch resources');
    }
  }
}
