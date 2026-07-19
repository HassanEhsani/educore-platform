class PaginatedResponse<T> {
  final List<T> data;
  final int page;
  final int totalPages;
  final int totalItems;

  const PaginatedResponse({
    required this.data,
    required this.page,
    required this.totalPages,
    required this.totalItems,
  });
}
