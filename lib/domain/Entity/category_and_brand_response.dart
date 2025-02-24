class CategoryAndBrandResponseEntity {
  CategoryAndBrandResponseEntity({
    this.results,
    this.metadata,
    this.statusMsg,
    this.data,
  });

  int? results;
  MetadataEntity? metadata;
  List<CategoryAndBrandEntity>? data;
  String? statusMsg;
}

class CategoryAndBrandEntity {
  CategoryAndBrandEntity({
    this.id,
    this.name,
    this.slug,
    this.image,
  });

  String? id;
  String? name;
  String? slug;
  String? image;
}

class MetadataEntity {
  MetadataEntity({
    this.currentPage,
    this.numberOfPages,
    this.limit,
  });

  int? currentPage;
  int? numberOfPages;
  int? limit;
}
