import 'package:meal_app/Models/4.2%20meal.dart';

String GetComplexityEnum(var enuum) {
  return enuum == Complexity.simple
      ? '  Simple'
      : enuum == Complexity.challenging
          ? '  Challenging'
          : enuum == Complexity.hard
              ? '  Hard'
              : enuum == Affordability.affordable
                  ? 'Affordable'
                  : enuum == Affordability.pricey
                      ? 'Pricey'
                      : 'Luxurious';
}
