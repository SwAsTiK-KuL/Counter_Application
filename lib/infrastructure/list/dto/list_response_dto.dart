import 'resource_data_dto.dart';

class ListResponseDto {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final List<ResourceDataDto> data;

  ListResponseDto({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });

  factory ListResponseDto.fromJson(Map<String, dynamic> json) {
    return ListResponseDto(
      page: json['page'],
      perPage: json['per_page'],
      total: json['total'],
      totalPages: json['total_pages'],
      data: List<ResourceDataDto>.from(
        json['data'].map((item) => ResourceDataDto.fromJson(item)),
      ),
    );
  }
}
