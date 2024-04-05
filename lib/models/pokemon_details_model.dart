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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data["base_experience"] = baseExperience;

    data["height"] = height;

    data["id"] = id;
    data["is_default"] = isDefault;

    data["name"] = name;
    data["order"] = order;

    if (sprites != null) {
      data["sprites"] = sprites?.toJson();
    }
    if (stats != null) {
      data["stats"] = stats?.map((e) => e.toJson()).toList();
    }
    if (types != null) {
      data["types"] = types?.map((e) => e.toJson()).toList();
    }
    data["weight"] = weight;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["slot"] = slot;
    if (type != null) {
      data["type"] = type?.toJson();
    }
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["url"] = url;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["base_stat"] = baseStat;
    data["effort"] = effort;
    if (stat != null) {
      data["stat"] = stat?.toJson();
    }
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["url"] = url;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["back_default"] = backDefault;
    data["back_female"] = backFemale;
    data["back_shiny"] = backShiny;
    data["back_shiny_female"] = backShinyFemale;
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    data["front_shiny"] = frontShiny;
    data["front_shiny_female"] = frontShinyFemale;

    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (move != null) {
      data["move"] = move?.toJson();
    }
    if (versionGroupDetails != null) {
      data["version_group_details"] =
          versionGroupDetails?.map((e) => e.toJson()).toList();
    }
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["level_learned_at"] = levelLearnedAt;
    if (moveLearnMethod != null) {
      data["move_learn_method"] = moveLearnMethod?.toJson();
    }
    if (versionGroup != null) {
      data["version_group"] = versionGroup?.toJson();
    }
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["url"] = url;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["url"] = url;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}
