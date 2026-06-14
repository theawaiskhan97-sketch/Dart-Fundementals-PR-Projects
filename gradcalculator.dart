import 'dart:io';

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
    ); // read and convert input to number
    marks.add(mark); // save the mark in the list
  }

  // Calculate total marks and show result for each subject
  int total = 0;
  print("\nSubject-wise Result:");

  for (int i = 0; i < subjects.length; i++) {
    // Decide PASS or FAIL
    String status = marks[i] >= 50 ? "PASS" : "FAIL";

    // Give grade only if mark is 50 or above; otherwise show F
    String grade = marks[i] >= 50 ? getGrade(marks[i]) : "F";

    print("${subjects[i]}: ${marks[i]}/100  Status: $status  Grade: $grade");
    total += marks[i]; // add mark to total
  }

  // Calculate average percentage
  double percentage = total / subjects.length;

  // Final overall status and grade
  String finalStatus = percentage >= 50 ? "PASS" : "FAIL";
  String finalGrade = percentage >= 50 ? getGrade(percentage.toInt()) : "F";

  // Print final summary
  print("-----------------------------");
  print("Total Marks : $total / ${subjects.length * 100}");
  print("Percentage  : ${percentage.toStringAsFixed(1)}%");
  print("Status      : $finalStatus");
  print("Final Grade : $finalGrade");
  print("=============================");
}

// Function to return grade based on marks
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
