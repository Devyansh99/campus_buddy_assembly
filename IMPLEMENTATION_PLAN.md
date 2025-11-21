# Campus Buddy Implementation Plan
## Based on Student ID: U20230107 (Numeric: 0107)

---

## 1. PERSONALIZATION SCHEME (5 Marks - Needs Excellence)

### Custom Personalization Logic (from ID 0107)

#### A. Focus Day (Which day gets scheduling priority)
- **Formula**: `ID % 6 = 107 % 6 = 5` → **Saturday is priority day**
- **Meaning**: Schedule analysis emphasizes Saturday; if conflicts arise, Saturday activities take precedence
- **Implementation**: Use this to highlight Saturday in recommendations

#### B. Time Slot Preference (Optimal study/activity time)
- **Formula**: `(ID >> 3) % 4 = (13) % 4 = 1` → **Mid-morning slot (11 AM - 1 PM)**
- **Meaning**: Personalized suggestions favor mid-morning for study sessions and activities
- **Implementation**: Recommend activities 11 AM - 1 PM when free

#### C. Activity Preference During Free Slots
- **Formula**: `(ID & 0x7) % 3 = (7) % 3 = 1` → **Sports & Social preference**
- **Mapping**: 0=Library Focus, 1=Sports & Social, 2=Wellness & Clubs
- **Meaning**: When free, suggest sports/social activities over library
- **Implementation**: Smart suggestions will lean toward sports/social

#### D. Subject Difficulty Personality (NEW - For better free slot recommendations)
- **Formula**: `(ID ^ 0x55) % 4` (XOR operation for variety)
- **Maps to**: Study intensity levels for personalized challenge assessment
- **Purpose**: Helps suggest harder/easier study sessions based on personality

---

## 2. SCHEDULE ANALYSIS (Based on Your Real Schedule)

### Weekly Classes Summary
```
MONDAY:      9-10:15 DL | 12-1 TOC | 2-3:15 FCS
TUESDAY:     11-12:15 EM | 2-3:15 SMAI | 4-5 NT
WEDNESDAY:   9-10:15 DL | 12-1 TOC | 2-3:15 FCS | 5-5:30 ILGC
THURSDAY:    9-11 FCS Lab | 11-12:15 EM | 2-3:15 SMAI | 4-5 NT
FRIDAY:      9-11 DL Lab | 11-12 SMAI Tut | 12-1 TOC | 4-5 TOC Tut
SATURDAY:    11-12 EM Tut | 2-5 ILGC
```

### Key Free Slots to Identify
- Monday: 10:15-12, 1-2 (Lunch), 3:15-5
- Tuesday: 12:15-2 (includes Lunch), 3:15-4, 5+
- Wednesday: 10:15-12, 1-2 (Lunch), 3:15-5, after 5:30
- Thursday: 12:15-2 (includes Lunch), 3:15-4, 5+
- Friday: 11-12 (part), 1-4
- Saturday: 12-2, 5+ (after ILGC)

---

## 3. PERSONALIZED FEATURES TO IMPLEMENT

### A. Personalized Schedule Display (Current Day)
- Take current day input
- Show actual schedule for that day
- Highlight next class (time remaining calculation)
- Mark free slots with durations
- Use personalization to order suggestions

### B. Smart Location Recommendation
**System Logic:**
- Input: Current time and free slot duration
- Factor 1: Personalization (Sports preference = go to Sports Complex)
- Factor 2: Distance (2 min to both Hostel & Library)
- Factor 3: Time of day (Lunch time? 12-2? Stay near food)
- Factor 4: Slot duration (< 30 min? Stay near class. > 1 hour? Go somewhere)

**Decision Tree:**
```
IF Lunch time (12-2) AND near food → Canteen/Courtyard
ELSE IF personality = Sports → Sports Complex (if time allows)
ELSE IF personality = Library → Library (good for quick study)
ELSE IF personality = Wellness → Yoga Room/Gym
ELSE IF free slot > 1.5 hours → Can go to Hostel
ELSE IF free slot < 30 min → Stay in class/courtyard
```

### C. Relative GPA Calculation (Need to Fix Current Issue)
**Current Implementation**: Hardcoded calculation
**Issue**: Not accounting for relative grading or semester difficulty

**Improved System:**
1. **Calculate Current Position**:
   - Completed: 78/160 credits (48.75%)
   - Need: 160 - 78 = 82 credits remaining
   - Current semester: 24 credits (being taken now, sem 5)

2. **Scenario Analysis** (Add to output):
   - IF rest of semesters get 10.0 GPA:
     - Total points = (8.18 × 78) + (10.0 × 82) = ?
     - Final CGPA = Total / 160 = ?
   - **Example**: "If you get 10.0 in all remaining courses, max possible CGPA = 9.45"

3. **Gap Analysis**:
   - Target: 8.5
   - Current: 8.18
   - Gap: 0.32 points
   - **Show**: "You need avg 8.73 GPA in remaining 82 credits to reach 8.5"

4. **Required SGPA for THIS semester** (Already implemented):
   - Current formula is correct, ensure it displays clearly

### D. Subject Difficulty Assessment (Personalized Priority)
**New Feature**: Ask for subject difficulty to prioritize free time study

**For Each Subject**:
- Deep Learning: Difficulty (1-5)?
- Theory of Computation: Difficulty (1-5)?
- Electromagnetics: Difficulty (1-5)?
- Search Methods in AI: Difficulty (1-5)?
- Fundamentals of CS: Difficulty (1-5)?
- Narrative Twists: Difficulty (1-5)?

**Use this to**:
- Suggest hardest subject study during free slot (if personality = serious)
- Suggest easiest subject during tired times
- Alert if difficult subject has low attendance

### E. Attendance Planning System
**Current Status**: Hardcoded placeholder data
**Need to Implement**:
1. Ask for current attendance per subject
2. Calculate attendance percentage
3. Determine classes needed to reach threshold (typically 75-80%)
4. Show alert if below threshold with urgent recommendations

**Example for Your Subjects** (To be filled):
```
Deep Learning: __ / __ classes (__%)
Theory of Computation: __ / __ classes (__%)
Electromagnetics: __ / __ classes (__%)
Search Methods in AI: __ / __ classes (__%)
Fundamentals of CS: __ / __ classes (__%)
Narrative Twists: __ / __ classes (__%)
```

---

## 4. CODE QUALITY & STRUCTURE PLAN

### Modular Functions (Good MIPS Practice)
```
main()
├── print_header()
├── display_personalization_info()
├── display_todays_schedule()
├── calculate_time_to_next_class()
├── recommend_location()
├── display_academic_overview()
│   ├── display_current_gpa()
│   ├── calculate_required_sgpa()
│   └── show_max_possible_cgpa()
├── display_attendance_planner()
├── display_smart_suggestions()
└── print_menu()
```

### Comment Structure
- **Section headers** with clear purpose
- **Calculation comments** explaining formulas
- **Register usage** documented
- **Personalization notes** showing ID derivation

---

## 5. OUTPUT EXAMPLE (IMPROVED FORMAT)

```
=== CAMPUS BUDDY ===
Student: U20230107 (Devyansh) | Monday, Nov 21, 2025

--- PERSONALIZATION PROFILE ---
Focus Day: Saturday (ID % 6 = 5)
Time Preference: Mid-morning (11 AM - 1 PM) [(ID >> 3) % 4 = 1]
Activity Preference: Sports & Social [(ID & 0x7) % 3 = 1]

--- TODAY'S SCHEDULE: MONDAY ---
9:00 - 10:15   Deep Learning          Lecture Hall A
10:15 - 12:00  [FREE SLOT - 1h 45min]
12:00 - 1:00   Theory of Computation  Lecture Hall B
1:00 - 2:00    LUNCH BREAK
2:00 - 3:15    Fundamentals of CS     Lab Block 1
3:15 - 5:00    [FREE SLOT - 1h 45min]

NEXT CLASS: Deep Learning in 5 minutes

RECOMMENDED FOR FREE SLOTS:
[10:15-12:00] Go to Sports Complex (personality match + time allows)
[3:15-5:00]   Sports Club meeting or Gym session (pre-dinner)

--- ACADEMIC OVERVIEW ---
Current CGPA: 8.18 | Credits Completed: 78/160 (48.75%)
Target CGPA: 8.5 | Credits Remaining: 82

REQUIRED THIS SEMESTER: 8.73 average (24 credits)
This semester's SGPA target to stay on track: 8.73

SCENARIO ANALYSIS:
├─ Best Case: If you get 10.0 in all remaining courses
│  └─ Maximum possible CGPA: 9.45
├─ Your Target: 8.5 (achievable with 8.73 this semester + avg 8.48 after)
└─ Risk: Current trajectory needs improvement to reach 8.5

--- ATTENDANCE PLANNER ---
Deep Learning: Need to check current (how many classes attended?)
Theory of Computation: Need to check current
Electromagnetics: Need to check current
Search Methods in AI: Need to check current
Fundamentals of CS: Need to check current
Narrative Twists: Need to check current

--- SMART SUGGESTIONS ---
1. With 1h 45min free slots, go to Sports Complex (your preference)
2. During Saturday (your focus day), plan 2-hour study block from 11 AM-1 PM
3. Study Deep Learning before Friday lab (harder subject - check difficulty?)
4. Bring lunch to campus (Sports Complex is far, better to eat in courtyard)
```

---

## 6. NEXT STEPS (Sequential Implementation)

1. **Update .data section** with schedule data (arrays/strings for each day)
2. **Implement day detection** logic (check current day)
3. **Build display_todays_schedule()** function
4. **Add time calculation** functions (next class, free slot duration)
5. **Implement location recommendation** with personalization factors
6. **Fix and enhance GPA calculation** with scenario analysis
7. **Add subject difficulty input system** (if not interactive, hardcode examples)
8. **Attendance system** (ask what data should be input)
9. **Add personalization display** at start (show your ID derivations)
10. **Polish output formatting** and comments

---

## Notes for Discussion

- **Attendance data**: Should this be hardcoded per subject or interactive?
- **Subject difficulty**: Should this be interactive input or hardcoded examples?
- **Current day**: Should we detect system date or ask user input?
- **SGPA calculation**: Is the current formula correct? Need to verify with Plaksha rules.

