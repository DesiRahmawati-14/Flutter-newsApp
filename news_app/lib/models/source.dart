class Source {
  String id ;
  String nama;

  Source ({this.id, this.nama});

  factory Source.fromJson(Map<String, dynamic> json){
    return Source(id: json ['id'], nama: json['nama']);
  }
}