import 'dart:io';

/// Student Result Card & Grade Calculator
/// This program collects student marks for five core subjects, calculates subject-specific status/grades,
/// and computes the overall total marks, percentage, status, and final grade.

void main() {
  // List of subjects for which marks will be entered
  List<String> subjects = ["Math", "English", "Science", "Urdu", "Computer"];

  // Empty list to store the marks entered by the user
  List<int> marks = [];

  // Print the result card heading
  print("=============================");
  print("        RESULT CARD          ");
  print("=============================");

  // Ask the user to enter marks for every subject
  for (String subject in subjects) {
    stdout.write("Enter marks for $subject (0-100): ");
    int mark = int.parse(
      stdin.readLineSync()!,
    ); // Read input line and convert to integer
    marks.add(mark); // Store the subject mark in the marks list
  }

  // Calculate total marks and show result for each subject
  int total = 0;
  print("\nSubject-wise Result:");

  for (int i = 0; i < subjects.length; i++) {
    // Decide PASS or FAIL based on a passing mark of 50
    String status = marks[i] >= 50 ? "PASS" : "FAIL";

    // Assign letter grade only if the subject is passed; otherwise default to "F"
    String grade = marks[i] >= 50 ? getGrade(marks[i]) : "F";

    // Output status and grade details for the current subject
    print("${subjects[i]}: ${marks[i]}/100  Status: $status  Grade: $grade");
    total += marks[i]; // Add subject mark to total sum
  }

  // Calculate average percentage based on total marks and number of subjects
  double percentage = total / subjects.length;

  // Determine final overall status and grade
  String finalStatus = percentage >= 50 ? "PASS" : "FAIL";
  String finalGrade = percentage >= 50 ? getGrade(percentage.toInt()) : "F";

  // Print final overall performance summary card
  print("-----------------------------");
  print("Total Marks : $total / ${subjects.length * 100}");
  print("Percentage  : ${percentage.toStringAsFixed(1)}%");
  print("Status      : $finalStatus");
  print("Final Grade : $finalGrade");
  print("=============================");
}

/// Helper function to determine the letter grade based on marks.
/// Ranges:
/// - A+: 90 to 100
/// - A:  80 to 89
/// - B:  70 to 79
/// - C:  60 to 69
/// - D:  50 to 59
/// - F:  Below 50
String getGrade(int marks) {
  if (marks >= 90)
    return "A+";
  else if (marks >= 80)
    return "A";
  else if (marks >= 70)
    return "B";
  else if (marks >= 60)
    return "C";
  else if (marks >= 50)
    return "D";
  else
    return "F";
}
