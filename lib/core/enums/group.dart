enum Group {
  Mother,
  Father,
  Lover,
  Child,
  Family,
  Friend,
  Coworker,
  College,
  HighSchool,
  ExCoworker,
}

extension GroupExtension on Group {
  String? get groupName {
    switch (this) {
      case Group.Family:
        return "Familiar";
      case Group.HighSchool:
        return "Colega de escola";
      case Group.College:
        return "Colega de faculdade";
      case Group.Lover:
        return "Parceira(o) amoroso";
      case Group.Mother:
        return "Mãe";
      case Group.Father:
        return "Pai";
      case Group.Child:
        return "Filha(o)";
      case Group.Coworker:
        return "Colega de trabalho";
      case Group.ExCoworker:
        return "Ex-colega de trabalho";
      default:
        return null;
    }
  }
}
