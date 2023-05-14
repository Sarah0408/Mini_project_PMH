class Recipe {
  String title;
  String photo;
  String calories;
  String time;
  String description;

  List<Ingredient> ingredients;
  List<TutorialStep> tutorial;
  List<Review> reviews;

  Recipe({this.title, this.photo, this.calories, this.time, this.description, this.ingredients, this.tutorial, this.reviews});

  factory Recipe.fromJson(Map<String, Object> json) {
    return Recipe(
      title: json['title'],
      photo: json['photo'],
      calories: json['calories'],
      time: json['time'],
      description: json['description'],
    );
  }
}

class TutorialStep {
  String step;
  String description;
  TutorialStep({this.step, this.description});

  Map<String, Object> toMap() {
    return {
      'step': step,
      'description': description,
    };
  }

  factory TutorialStep.fromJson(Map<String, Object> json) => TutorialStep(
        step: json['step'],
        description: json['description'],
      );

  static List<TutorialStep> toList(List<Map<String, Object>> json) {
    return List.from(json).map((e) => TutorialStep(step: e['step'], description: e['description'])).toList();
  }
}

class Review {
  String username;
  String review;
  Review({this.username, this.review});

  factory Review.fromJson(Map<String, Object> json) => Review(
        review: json['review'],
        username: json['username'],
      );

  Map<String, Object> toMap() {
    return {
      'username': username,
      'review': review,
    };
  }

  static List<Review> toList(List<Map<String, Object>> json) {
    return List.from(json).map((e) => Review(username: e['username'], review: e['review'])).toList();
  }
}

class Ingredient {
  String name;
  String size;

  Ingredient({this.name, this.size});
  factory Ingredient.fromJson(Map<String, Object> json) => Ingredient(
        name: json['name'],
        size: json['size'],
      );

  Map<String, Object> toMap() {
    return {
      'name': name,
      'size': size,
    };
  }

  static List<Ingredient> toList(List<Map<String, Object>> json) {
    return List.from(json).map((e) => Ingredient(name: e['name'], size: e['size'])).toList();
  }
}
