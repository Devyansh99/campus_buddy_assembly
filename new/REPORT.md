# OP-CODE: Campus Buddy - My Assignment Report

**Name:** U20230107  
**Student ID:** 107  
**Program:** Computer Science & Engineering  
**Course:** CS2011: Foundations of Computer Systems  
**Instructor:** Ankur Nahar  
**University:** Plaksha University

---

## How My Personalization Works

### My Personality Type

Using my student ID: **107 % 4 = 3**

This makes me a **Social Butterfly** 

**What that means for me:**
- I like studying with friends and in groups
- I prefer club meetings over solo library sessions
- My best time to be productive is during evening hangouts when I can chat and work simultaneously
- I get more done when there's people around

### My Academic Numbers

- Current CGPA: **8.18**
- Target CGPA: Can be set by user
- Credits done: **78 out of 160**
- This semester: **24 credits** (Semester 5)

The program has an interactive **CGPA Calculator** at the end that lets me:
1. Choose between "End of Current Semester" or "End of Degree" calculation
2. Enter my target CGPA
3. Get the required SGPA to hit that target
4. If the required SGPA > 10, it caps at 10.0 and shows a note: "You need to maintain 10.0 SGPA (maximum possible)"

### My Class Schedule (Example: Wednesday)

```
9:00-10:15 AM   → Deep Learning class
10:15 AM-12 PM  → FREE (1h 45min)
12:00-1:00 PM   → Theory of Computation
1:00-2:00 PM    → Lunch break
2:00-3:15 PM    → Fundamentals of CS
3:15-5:00 PM    → FREE (1h 45min)
5:00-5:30 PM    → ILGC Meeting
```

---

## What The Program Actually Shows Me

When I run it with my ID and today's date, here's what I see:

### Part 1: My Profile
It tells me I'm a Social Butterfly and what that means for how I study best.

### Part 2: Today's Schedule
All my classes with room numbers, lunch break, and free time slots highlighted. It's basically my actual timetable.

### Part 3: Evening Plans
Fixed activities every day like basketball at 6 PM, dinner at 7:30, and Geek Room club meeting at 9 PM. Then free time after that.

### Part 4: Smart Suggestions (The Useful Part!)
Based on my personality AND how much free time I have:

**If I have 30 minutes free:**
"Chat with friends in common area" (because I'm social!)

**If I have 1 hour free:**
"Casual hangout with friends + Light study"

**If I have 2+ hours free:**
"Group study session or Club meeting (Geek Room/Robotics)"

Plus breakfast suggestions that match my vibe: For me it's "Meet roommates for breakfast at Mess, plan the day"

### Part 5: My Academic Tracker
Shows my current grades and how much I'm progressing toward graduation. Also shows which subjects I need to attend more classes for to maintain 75% attendance.

My attendance:
- FOCS: 22/25 (88%) ✓ Good
- DL: 18/20 (90%) ✓ Excellent
- ToC: 21/25 (84%) ✓ Good
- And others...

---

## Program Output Demonstration

### Sample Output (Student ID 107, Wednesday)

```
=====================================================
Student ID: U20230107 | Wednesday | 10:00 AM
=====================================================

=== YOUR PERSONALITY PROFILE ===
Personality Type (ID % 4): 3
Social Butterfly (The Connector)
Traits: Community-focused, collaborative

Key Characteristics:
✓ Preference: Group study sessions & club meetings
✓ Activities: Geek Room, Robotics, collaborative projects
✓ Best Time: Evening hangouts (9-11 PM)
✓ Study: Only light/easy subjects in groups

========== TODAY'S SCHEDULE ==========

9:00-10:15 AM Deep Learning - 2201
10:15-12:00 PM [FREE - 1h 45min]
12:00-1:00 PM Theory of Computation - 2202
1:00-2:00 PM LUNCH BREAK
2:00-3:15 PM Fundamentals of CS - 2201
3:15-5:00 PM [FREE - 1h 45min]
5:00-5:30 PM ILGC Meeting - 2201

========== EVENING & NIGHT SCHEDULE ==========
6:00-7:00 PM: Basketball Practice [Sports Complex]
7:30-9:00 PM: Dinner [Dining Hall]
9:00-10:00 PM: Geek Room Club Meeting (Monday-Saturday)
10:00-11:30 PM: Free Time (Projects, Friends, Relaxation)
11:30 PM: Recommended Sleep Time

========== SMART SUGGESTIONS: [Personalized Activity Recommendations] ==========

8:00-9:00 AM: BREAKFAST & FRESHEN UP
  → Meet roommates for breakfast at Mess, plan the day

========== FREE TIME SLOTS TODAY ==========
  • 10:15 AM - 12:00 PM (105 mins) - Casual hangout with friends + Light study
  • 3:15 PM - 5:00 PM (105 mins) - Group study session or Club meeting (Geek Room/Robotics)

=== 9:00 PM - 11:00 PM FREE SLOT ACTIVITIES ===
[9:00-10:00 PM] Geek Room Meeting / Club Activity
[10:00-11:00 PM] Group project collab + chai & conversation

========== ACADEMIC OVERVIEW ==========

Current CGPA: 8.18 | Credits: 78 | (Semester 5: 24 credits)
Target CGPA: 8.3

Credit Plan (Personalized):
Sem 5 Credits: 24 -> Goal SGPA: 8.45
Sem 6 Credits: 24 -> Goal SGPA: 8.40
Sem 7 Credits: 18 -> Goal SGPA: 8.30

Note: With 9.5 SGPA in all remaining semesters, maximum achievable CGPA = 8.11

========== ATTENDANCE PLANNER ==========

Calculation: minimum classes x so that (attended+x)/(total+x) >= 75% cutoff

[FOCS]: 22/25 classes (88%) -> Good standing! (Grading: 10% weightage)
[Narrative Twists (NT)]: 20/24 classes (83.33%) -> Good standing! (Grading: 20% weightage)
[Deep Learning (DL)]: 18/20 classes (90%) -> Excellent! (Grading: 10% weightage)
[Search Methods in AI (SMAI)]: 25 total classes -> (Grading: No attendance weightage)
[Theory of Computation (ToC)]: 21/25 classes (84%) -> Good standing! (Grading: 10% weightage)
[Electromagnetics (EM)]: 23/25 classes (92%) -> Excellent! (Grading: 10% weightage)

=====================================================
```

---

---

## How I Built This Thing

### The Basic Idea
Writing this in MIPS was actually trickier than I thought. The program needs to:
1. Take my ID and figure out my personality
2. Find my schedule for the day I ask about
3. Spot where I have free time
4. Give me suggestions that actually make sense for how I study
5. Tell me how I'm doing academically

### Why MIPS? 
This is for my Fundamentals of Computer Organization & Structures (FOCS) class, so assembly it is! It's basically the lowest-level programming where I'm working directly with registers and memory. Not exactly fun, but super educational.

### What The Code Actually Does

The program is split into sections:

**Data Section (the strings):**
All my schedule data, activity descriptions, personality profiles, and academic info are stored as strings.

**Functions (the logic):**
Different functions handle displaying different info:
- `display_schedule` - shows today's classes
- `display_free_slots` - shows when I'm free and what I should do
- `display_smart_suggestions` - gives time-based activity recommendations
- `display_academic_info` - shows my grades and progress

**Main Program:**
Takes my ID, calculates my personality, looks up today's schedule, runs the display functions, and prints everything out.

---

## How Personalization Works

### Input System
```
Enter Student ID: 107
Enter Day (0=Monday, 5=Saturday): 2
Enter Time (HHMM format): 1000
```

### Processing Flow
1. **ID 107** → Personality Type = 107 % 4 = **3 (Social)**
2. **Day 2** → **Wednesday schedule** displayed
3. **Time 1000** → 10:00 AM → Currently in free slot
4. **Duration calculation** → 105 minutes remaining until next class
5. **Personality-based suggestions** shown for the free time

### Why This Matters
The personality system is the core of everything. It uses a simple modulo operation (ID % 4) to assign one of 4 types, and then EVERY SINGLE SUGGESTION changes based on that:

- **Personality 0 - Hardworking Scholar:** Suggests library work, subject review, focused study
- **Personality 1 - Athletic Go-Getter:** Suggests gym, sports, physical activities
- **Personality 2 - Balanced Achiever:** Mix of study and recreation
- **Personality 3 - Social Butterfly (me!):** Group study, club meetings, hanging out with friends

So the same free time slot gets totally different suggestions depending on your ID. I think that's actually pretty cool.

---

## Testing It Out

### What I Tested
I ran through all 4 personality types with different days and times to make sure:
- All schedules display correctly
- Free time detection is accurate
- Activity suggestions actually match the personality
- Academic numbers are right
- All 6 days work

### Test Case 1: My Profile (ID 107 - Social)
```
Input:  ID=107, Day=2 (Wednesday), Time=1000
Output: Shows Social Butterfly profile
        Suggests group study and club meetings
        Recommends "Chat with friends" for quick breaks
```

### Test Case 2: Hardworking Scholar (ID 103)
```
Input:  ID=103, Day=0 (Monday), Time=1015
Output: Shows Hardworking Scholar profile
        Suggests library and focused study
        Different activities completely
```

### Test Case 3: All Days Working
- **Monday:** Classes 9-10:15 AM, 12-1 PM, 2-3:15 PM → Works!
- **Tuesday:** Free morning 9-11, then classes → Free time spotted correctly!
- **Wednesday:** My sample from above
- **Thursday:** Lab session 9-11 → Displays right!
- **Friday:** Different schedule with lab and tutorial → All good!
- **Saturday:** Less classes → Shows more free time → Perfect!

Everything checked out. No crashes, clean output.

---

## What Makes This Actually Personal

### The Personality Engine
I'm a Social Butterfly (personality 3), so when the program runs, it knows:
- I learn best in groups
- I should join club meetings when I have free time
- Quick hangouts are better for me than solo study sessions
- I prefer collaborative projects

If someone else with a different ID uses it, they'd get:
- Different activity recommendations
- Different 9-11 PM activities
- Different free-time strategies

### The Academic Tracker
The program stores MY actual data:
- My CGPA: 8.18
- My target: 8.3
- My credits completed: 78
- My attendance in each subject
- My remaining semesters