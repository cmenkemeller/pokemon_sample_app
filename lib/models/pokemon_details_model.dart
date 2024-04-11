class PokemonDetailsModel {
  int? baseExperience;
  int? height;
  int? id;
  bool? isDefault;
  List<Moves>? moves;
  String? name;
  int? order;
  Sprites? sprites;
  List<Stats>? stats;
  List<Types>? types;
  int? weight;

  PokemonDetailsModel(
      {this.baseExperience,
      this.height,
      this.id,
      this.isDefault,
      this.moves,
      this.name,
      this.order,
      this.sprites,
      this.stats,
      this.types,
      this.weight});

  PokemonDetailsModel.fromJson(Map<String, dynamic> json) {
    if (json["base_experience"] is int) {
      baseExperience = json["base_experience"];
    }

    if (json["height"] is int) {
      height = json["height"];
    }

    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["is_default"] is bool) {
      isDefault = json["is_default"];
    }

    if (json["moves"] is List) {
      moves = json["moves"] == null
          ? null
          : (json["moves"] as List).map((e) => Moves.fromJson(e)).toList();
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["order"] is int) {
      order = json["order"];
    }

    if (json["sprites"] is Map) {
      sprites =
          json["sprites"] == null ? null : Sprites.fromJson(json["sprites"]);
    }
    if (json["stats"] is List) {
      stats = json["stats"] == null
          ? null
          : (json["stats"] as List).map((e) => Stats.fromJson(e)).toList();
    }
    if (json["types"] is List) {
      types = json["types"] == null
          ? null
          : (json["types"] as List).map((e) => Types.fromJson(e)).toList();
    }
    if (json["weight"] is int) {
      weight = json["weight"];
    }
  }
}

class Types {
  int? slot;
  Type? type;

  Types({this.slot, this.type});

  Types.fromJson(Map<String, dynamic> json) {
    if (json["slot"] is int) {
      slot = json["slot"];
    }
    if (json["type"] is Map) {
      type = json["type"] == null ? null : Type.fromJson(json["type"]);
    }
  }
}

class Type {
  String? name;
  String? url;

  Type({this.name, this.url});

  Type.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
  }
}

class Stats {
  int? baseStat;
  int? effort;
  Stat? stat;

  Stats({this.baseStat, this.effort, this.stat});

  Stats.fromJson(Map<String, dynamic> json) {
    if (json["base_stat"] is int) {
      baseStat = json["base_stat"];
    }
    if (json["effort"] is int) {
      effort = json["effort"];
    }
    if (json["stat"] is Map) {
      stat = json["stat"] == null ? null : Stat.fromJson(json["stat"]);
    }
  }
}

class Stat {
  String? name;
  String? url;

  Stat({this.name, this.url});

  Stat.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
  }
}

class Sprites {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  Sprites({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  Sprites.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) {
      backDefault = json["back_default"];
    }
    if (json["back_female"] is String) {
      backFemale = json["back_female"];
    }
    if (json["back_shiny"] is String) {
      backShiny = json["back_shiny"];
    }
    if (json["back_shiny_female"] is String) {
      backShinyFemale = json["back_shiny_female"];
    }
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    if (json["front_female"] is String) {
      frontFemale = json["front_female"];
    }
    if (json["front_shiny"] is String) {
      frontShiny = json["front_shiny"];
    }
    if (json["front_shiny_female"] is String) {
      frontShinyFemale = json["front_shiny_female"];
    }
  }
}

class Moves {
  Move? move;
  List<VersionGroupDetails>? versionGroupDetails;

  Moves({this.move, this.versionGroupDetails});

  Moves.fromJson(Map<String, dynamic> json) {
    if (json["move"] is Map) {
      move = json["move"] == null ? null : Move.fromJson(json["move"]);
    }
    if (json["version_group_details"] is List) {
      versionGroupDetails = json["version_group_details"] == null
          ? null
          : (json["version_group_details"] as List)
              .map((e) => VersionGroupDetails.fromJson(e))
              .toList();
    }
  }
}

class VersionGroupDetails {
  int? levelLearnedAt;
  MoveLearnMethod? moveLearnMethod;
  VersionGroup? versionGroup;

  VersionGroupDetails(
      {this.levelLearnedAt, this.moveLearnMethod, this.versionGroup});

  VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    if (json["level_learned_at"] is int) {
      levelLearnedAt = json["level_learned_at"];
    }
    if (json["move_learn_method"] is Map) {
      moveLearnMethod = json["move_learn_method"] == null
          ? null
          : MoveLearnMethod.fromJson(json["move_learn_method"]);
    }
    if (json["version_group"] is Map) {
      versionGroup = json["version_group"] == null
          ? null
          : VersionGroup.fromJson(json["version_group"]);
    }
  }
}

class VersionGroup {
  String? name;
  String? url;

  VersionGroup({this.name, this.url});

  VersionGroup.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
  }
}

class MoveLearnMethod {
  String? name;
  String? url;

  MoveLearnMethod({this.name, this.url});

  MoveLearnMethod.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
  }
}

class Move {
  String? name;
  String? url;

  Move({this.name, this.url});

  Move.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
  }
}
