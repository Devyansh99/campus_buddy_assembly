# Campus Buddy - MIPS Assembly Project

**Student Name:** Devyansh Agarwal  
**Student ID:** U20230107  
**Program:** Personalized Student Life Management System

---

## Introduction

This report presents the output and functionality of the Campus Buddy system when executed with Student ID verification input **107** (last 3 digits of U20230107). The system demonstrates a complete personalized student life management solution built in MIPS assembly language.

---

## Algorithms Used for Personalization

### Algorithm 1: Focus Day Calculation
```
Focus Day = Student ID % 6
107 % 6 = 5 → Saturday (Day 5)
```

### Algorithm 2: Campus Personality Identification
```
Personality = (Last Digit >> 2) % 4
(7 >> 2) % 4 = 1 → Sports Enthusiast
```

### Algorithm 3: Optimal Study Time Detection
```
Study Time = (Sum of all digits) % 5
(1+0+2+3+0+1+0+7) % 5 = 0 → Morning
```

### Algorithm 4: Campus Personality Classification
```
Personality Type = (Last Digit of ID >> 2) % 4
Result Mapping:
  0 = Library Scholar
  1 = Sports Enthusiast
  2 = Wellness Advocate
  3 = Social Butterfly
```

### Algorithm 5: Focus Day Selection
```
Focus Day = Student ID % 6
Result Mapping:
  0 = Monday, 1 = Tuesday, 2 = Wednesday
  3 = Thursday, 4 = Friday, 5 = Saturday
```

### Algorithm 6: Study Window Time Blocks
```
Study Window = (Sum of Student ID digits) % 5
Result Mapping:
  0 = Morning (9-11 AM)
  1 = Afternoon (2-4 PM)
  2 = Evening (6-8 PM)
  3 = Late Night (9-11 PM)
  4 = Post-midnight (11 PM-1 AM)
```

### Algorithm 7: Time Remaining Calculation
```
Current Time: 12:00 PM (Saturday)
Time Until Next Class: 2:00 PM - 12:00 PM = 120 minutes
```

---

## Program Output Screenshots

### Feature 1: Input Verification
Program requests Student ID verification by prompting for last 3 digits. Enter **107** to access the personalized dashboard.

![Input Verification](Screenshot%202025-11-23%20225554.png)

---

### Feature 2: Personalization Welcome
Upon successful verification, system displays welcome message with current time and student identity.

![Personalization Welcome](Screenshot%202025-11-23%20225631.png)

---

### Feature 3: Personalized Profile
Shows unique ID-based characteristics: Focus Day (Saturday), Personality (Sports Enthusiast), Study Time (Morning 9-11 AM).

![Profile](Screenshot%202025-11-23%20225708.png)

---

### Feature 4: Time Remaining Until Next Class
Displays current activity and time remaining until next class. Currently in lunch break with 120 minutes until ILGC at 2 PM.

![Time Remaining](Screenshot%202025-11-23%20225817.png)

---

### Feature 5: Free Slots & Study Plan
Lists available free time slots throughout the day with recommended study activities and locations.

![Free Slots & Study Plan](Screenshot%202025-11-23%20225850.png)

---

### Feature 6: Evening Routine
Recommended schedule after classes balancing academics with sports and social activities.

![Evening Routine](Screenshot%202025-11-23%20225931.png)

---

### Feature 7: Academic Overview
Current CGPA (8.18) with target (8.3), credit plan, and maximum achievable CGPA calculation.

![Academic Overview](Screenshot%202025-11-23%20225955.png)

---

### Feature 8: Attendance Planner
Attendance status for all 6 subjects with percentages and grading weightage information.

![Attendance Planner](Screenshot%202025-11-23%20230003.png)

---

### Feature 9: Smart Suggestions & Activity Recommendations
Recommended activities and study suggestions including basketball, club meetings, and relaxation time.

![Smart Suggestions & Activity Recommendations](Screenshot%202025-11-23%20230008.png)

---

### Feature 10: Subject Difficulty Ratings
Difficulty levels of all 6 subjects (1=Easy, 5=Hardest) to prioritize study time allocation.

![Subject Difficulty Ratings](Screenshot%202025-11-23%20230014.png)

---

### Feature 11: Smart Study Recommendations
Recommended study focus for free slots, prioritizing hardest subjects when mind is fresh in morning.

![Smart Study Recommendations](Screenshot%202025-11-23%20230020.png)

---

### Feature 12: Smart Location Recommendations
Personalized study locations based on personality profile and optimal study time for each part of the day.

![Smart Location Recommendations](Screenshot%202025-11-23%20230027.png)

---

## Technical Details

- **Language:** MIPS Assembly
- **Code Length:** 920 lines
- **Features:** 12 major components
- **Personalization:** 7 algorithms
- **Student ID:** U20230107
