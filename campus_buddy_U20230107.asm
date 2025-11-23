.data
# ============================================
# PERSONAL PROFILE DATA (CUSTOMIZE AS NEEDED)
# ============================================
student_id:        .asciiz "U20230107"
current_cgpa_val:  .float 8.18
target_cgpa_val:   .float 8.3
completed_credits: .word 78
sem5_credits:      .word 24
sem6_credits:      .word 24
sem7_credits:      .word 18
internship_credits:.word 16
total_credits_req: .word 160

# ============================================
# OUTPUT STRINGS - HEADER
# ============================================
header:            .asciiz "=== CAMPUS BUDDY ===\n"
current_time_str:  .asciiz "Current Time: 12:00 PM (Saturday)\n"
student_line:      .asciiz "Student: "
pipe:              .asciiz " | "
newline:           .asciiz "\n"
divider:           .asciiz "=====================================\n"

# ============================================
# OUTPUT STRINGS - PERSONALIZATION SECTION
# ============================================
person_header:     .asciiz "\n=== PERSONALIZATION PROFILE ===\n"
focus_day_str:     .asciiz "Focus Day: "
focus_day_explain: .asciiz " (Saturday is priority)\n"
activity_pref_str: .asciiz "Campus Personality: "
personality_sports:.asciiz "Sports & Physical Activities Enthusiast\n"
personality_library:.asciiz "Library & Study Focused Scholar\n"
personality_wellness:.asciiz "Wellness & Balanced Lifestyle Advocate\n"
personality_social:.asciiz "Social & Group Study Butterfly\n"
study_time_str:    .asciiz "Optimal Study Window: "
study_morning:     .asciiz "Morning (9-11 AM) - Fresh mind, best for theory\n"
study_afternoon:   .asciiz "Afternoon (2-4 PM) - Post-lunch review sessions\n"
study_evening:     .asciiz "Evening (6-8 PM) - Problem-solving & practical work\n"
study_late:        .asciiz "Late Night (9-11 PM) - Revision & assignments\n"
study_midnight:    .asciiz "Post-midnight (11 PM-1 AM) - Deep focus work\n"

# ============================================
# OUTPUT STRINGS - SCHEDULE SECTION
# ============================================
today_schedule_header: .asciiz "\n========== TODAY'S SCHEDULE ==========\n"
next_class_header: .asciiz "\n========== TIME REMAINING UNTIL NEXT CLASS ==========\n"
time_remaining_msg: .asciiz "Time remaining: "
minutes_msg:       .asciiz " minutes\n"
lunch_note:        .asciiz "[Currently in LUNCH BREAK - 2 hours (12:00 PM - 2:00 PM)]\n"
no_class_msg:      .asciiz "No more classes today!\n"

# ============================================
# OUTPUT STRINGS - ACADEMIC OVERVIEW
# ============================================
academic_header:   .asciiz "\n========== ACADEMIC OVERVIEW ==========\n"
cgpa_label:        .asciiz "Current CGPA: "
credits_label:     .asciiz " | Credits: "
sem5_label:        .asciiz "(Semester 5: 24 credits)"
target_label:      .asciiz "\nTarget CGPA: "
required_label:    .asciiz " | Required this semester: "
slash:             .asciiz "/"
credit_plan_header: .asciiz "\nCredit Plan (Personalized):\n"
sem5_plan:         .asciiz "Sem 5 Credits: 24 -> Goal SGPA: "
sem6_plan:         .asciiz "Sem 6 Credits: 24 -> Goal SGPA: "
sem7_plan:         .asciiz "Sem 7 Credits: 18 -> Goal SGPA: "
max_achievable:    .asciiz "\nNote: With 9.5 SGPA in all remaining semesters, maximum achievable CGPA = 8.11\n"

# ============================================
# OUTPUT STRINGS - ATTENDANCE SECTION
# ============================================
attendance_header: .asciiz "\n========== ATTENDANCE PLANNER ==========\n"
att_intro:         .asciiz "Calculation: minimum classes x so that (attended+x)/(total+x) >= 75% cutoff\n\n"
attend1:           .asciiz "[FOCS]: 88% attendance -> Good standing! (Grading: 10% weightage for attendance)\n"
attend2:           .asciiz "[Narrative Twists (NT)]: 20/24 classes (83.33%) -> Good standing! (Grading: 20% weightage for attendance)\n"
attend3:           .asciiz "[Deep Learning (DL)]: 18/20 classes (90%) -> Excellent! (Grading: 10% weightage for attendance)\n"
attend4:           .asciiz "[Search Methods in AI (SMAI)]: 25 total classes -> (Grading: No attendance weightage)\n"
attend5:           .asciiz "[Theory of Computation (ToC)]: 84% attendance -> Good standing! (Grading: 10% weightage for attendance)\n"
attend6:           .asciiz "[Electromagnetics (EM)]: 23/25 classes (92%) -> Excellent! (Grading: 10% weightage for attendance)\n"

# ============================================
# OUTPUT STRINGS - SUGGESTIONS SECTION
# ============================================
smart_suggestions_header: .asciiz "\n========== SMART SUGGESTIONS & ACTIVITY RECOMMENDATIONS ==========\n"
basketball_activity: .asciiz "[6:00-7:00 PM] BASKETBALL PRACTICE\n"
geek_room_note:   .asciiz "[9:00-10:00 PM] GEEK ROOM CLUB MEETING (Monday - Saturday)\n"
robotics_note:    .asciiz "[9:00-10:00 PM] ROBOTICS LAB MEETING (Every Sunday)\n"
free_evening_slot: .asciiz "[10:00-11:00 PM] FREE TIME (Games, Personal Projects, Relaxation)\n"

# Smart location recommendation logic
location_rec_header: .asciiz "\n========== SMART LOCATION RECOMMENDATIONS ==========\n"
hostel_2hrs:      .asciiz "[Free slot >= 2 hours] Go to HOSTEL - Rest & freshen up and study\n"
library_short:    .asciiz "[Free slot < 2 hours] Go to LIBRARY - Study & assignments\n"
saturday_note:    .asciiz "[SATURDAY - Your priority day] Plan longer study/rest blocks\n"
evening_header:   .asciiz "\n========== EVENING ROUTINE ==========\n"
snacks_time:      .asciiz "5:30-6:00 PM: Snack break at Mess\n"
sports_time:      .asciiz "6:00-7:00 PM: Basketball Practice\n"
dinner_time:      .asciiz "7:30-9:00 PM: Dinner at Mess\n"
free_after_dinner: .asciiz "9:00-11:30 PM: Free time for assignments, clubs, friends, or rest\n"
sleep_time:       .asciiz "11:30 PM: Recommended sleep time\n"

# Subject difficulty display
subject_difficulty_header: .asciiz "\n=== SUBJECT DIFFICULTY RATINGS (1=Easy, 5=Hardest) ===\n"
difficulty_rating: .asciiz ": Difficulty Level "

# ============================================
# PERSONALIZATION DATA (CUSTOM LOGIC)
# ============================================
# PERSONALIZATION ALGORITHM EXPLANATION:
# For Student ID U20230107 (numeric: 20230107):
#
# 1. FOCUS DAY: ID % 6 = 107 % 6 = 5 (Saturday)
#    - Determines which day is priority for longer study blocks
#    - Saturday: Perfect for 2-3 hour study sessions
#
# 2. CAMPUS PERSONALITY: (Last digit >> 2) % 4 = (7 >> 2) % 4 = 1
#    - 0 = Library Scholar (prefers quiet study spaces)
#    - 1 = Sports Enthusiast (prefers physical activities + study breaks)
#    - 2 = Wellness Advocate (prefers balanced schedule)
#    - 3 = Social Butterfly (prefers group study + clubs)
#
# 3. OPTIMAL STUDY TIME: Sum of ID digits % 5 = (2+0+2+3+0+1+0+7) % 5 = 15 % 5 = 0
#    - 0 = Morning (9-11 AM) - Fresh mind
#    - 1 = Afternoon (2-4 PM) - Post-lunch focus
#    - 2 = Evening (6-8 PM) - Problem solving
#    - 3 = Late Night (9-11 PM) - Revision
#    - 4 = Post-midnight (11 PM-1 AM) - Deep work

focus_day:         .word 5                  # 0=Mon, 1=Tue, 2=Wed, 3=Thu, 4=Fri, 5=Sat
campus_personality:.word 1                  # 0=Library, 1=Sports, 2=Wellness, 3=Social
optimal_study_time:.word 0                  # 0=Morning, 1=Afternoon, 2=Evening, 3=Late, 4=Post-midnight

# ============================================
# WEEKLY SCHEDULE DATA (Real Classes - User Provided)
# ============================================
# Format: class_start, class_end, subject_name (as string)
# Times in HHMM format (900=9:00, 1015=10:15, etc)

# MONDAY: 9-10:15 DL | 12-1 TOC | 1-2 Lunch | 2-3:15 FCS
monday_label:      .asciiz "Monday"
monday_class1:     .asciiz "9:00-10:15 Deep Learning - 2201"
monday_class2:     .asciiz "12:00-1:00 Theory of Computation - 2202"
monday_lunch:      .asciiz "1:00-2:00 LUNCH BREAK"
monday_class3:     .asciiz "2:00-3:15 Fundamentals of CS - 2201"
monday_free1:      .asciiz "3:15-5:00 [FREE SLOT - 1h 45min]"

# TUESDAY: 11-12:15 EM | Lunch til 2 | 2-3:15 SMAI | 4-5 NT
tuesday_label:     .asciiz "Tuesday"
tuesday_free1:     .asciiz "9:00-11:00 [FREE SLOT - 2h]"
tuesday_class1:    .asciiz "11:00-12:15 Electromagnetics - 2203"
tuesday_lunch:     .asciiz "12:15-2:00 LUNCH BREAK"
tuesday_class2:    .asciiz "2:00-3:15 Search Methods in AI - 1001 B"
tuesday_free2:     .asciiz "3:15-4:00 [FREE SLOT - 45min]"
tuesday_class3:    .asciiz "4:00-5:00 Narrative Twists - 2201"

# WEDNESDAY: 9-10:15 DL | 12-1 TOC | 1-2 Lunch | 2-3:15 FCS | 5-5:30 ILGC
wednesday_label:   .asciiz "Wednesday"
wednesday_class1:  .asciiz "9:00-10:15 Deep Learning - 2201"
wednesday_free1:   .asciiz "10:15-12:00 [FREE SLOT - 1h 45min]"
wednesday_class2:  .asciiz "12:00-1:00 Theory of Computation - 2202"
wednesday_lunch:   .asciiz "1:00-2:00 LUNCH BREAK"
wednesday_class3:  .asciiz "2:00-3:15 Fundamentals of CS - 2201"
wednesday_free2:   .asciiz "3:15-5:00 [FREE SLOT - 1h 45min]"
wednesday_class4:  .asciiz "5:00-5:30 ILGC Meeting with Mentor - 2201"

# THURSDAY: 9-11 FCS Lab | 11-12:15 EM | Lunch til 2 | 2-3:15 SMAI | 4-5 NT
thursday_label:    .asciiz "Thursday"
thursday_class1:   .asciiz "9:00-11:00 Fundamentals of CS Lab - 2201"
thursday_class2:   .asciiz "11:00-12:15 Electromagnetics - 2203"
thursday_lunch:    .asciiz "12:15-2:00 LUNCH BREAK"
thursday_class3:   .asciiz "2:00-3:15 Search Methods in AI - 1001 B"
thursday_free1:    .asciiz "3:15-4:00 [FREE SLOT - 45min]"
thursday_class4:   .asciiz "4:00-5:00 Narrative Twists - 2201"

# FRIDAY: 9-11 DL Lab | 11-12 SMAI Tut | 12-1 TOC | 1-2 Lunch | 4-5 TOC Tut
friday_label:      .asciiz "Friday"
friday_class1:     .asciiz "9:00-11:00 Deep Learning Lab - 2201"
friday_class2:     .asciiz "11:00-12:00 Search Methods in AI Tutorial - 1001 B"
friday_class3:     .asciiz "12:00-1:00 Theory of Computation - 2202"
friday_lunch:      .asciiz "1:00-2:00 LUNCH BREAK"
friday_free1:      .asciiz "2:00-4:00 [FREE SLOT - 2h]"
friday_class4:     .asciiz "4:00-5:00 Theory of Computation Tutorial - 2202"

# SATURDAY: 11-12 EM Tut | 2-5 ILGC
saturday_label:    .asciiz "Saturday"
saturday_free1:    .asciiz "9:00-11:00 [FREE SLOT - 2h]"
saturday_class1:   .asciiz "11:00-12:00 Electromagnetics Tutorial - 2203"
saturday_free2:    .asciiz "12:00-2:00 [FREE SLOT - 2h]"
saturday_class2:   .asciiz "2:00-5:00 ILGC - 2201"
saturday_free3:    .asciiz "5:00-9:00 [FREE SLOT - 4h]"

# ============================================
# STUDY SUGGESTIONS FOR SATURDAY FREE SLOTS
# ============================================

# Original Timetable Labels
original_tt_header: .asciiz "\n========== TIMETABLE (Saturday) =========="
original_class1:   .asciiz "11:00-12:00 Electromagnetics - 2203"
original_lunch:    .asciiz "12:00-2:00 LUNCH at Mess"
original_class2:   .asciiz "2:00-5:00 ILGC - 2201"

# Smart Study Schedule Labels
smart_study_header: .asciiz "\n========== FREE SLOTS & STUDY PLAN (Saturday) =========="
breakfast_slot:    .asciiz "8:00-9:00 [1 hour FRESHUP & BREAKFAST]"
suggestion_breakfast: .asciiz "  → Freshen up at Hostel, then breakfast at Mess"
study_slot1:       .asciiz "9:00-11:00 [2 hours FREE]"
suggestion_free1:  .asciiz "  → STUDY: SMAI (Go to Hostel Room, Study + Freshen up)"
study_slot2:       .asciiz "12:00-1:00 [1 hour FREE]"
suggestion_slot2:  .asciiz "  → STUDY: DL or EM (Go to Library)"
slot_evening:      .asciiz "5:00-5:30"
suggestion_dl_em:  .asciiz "  → Relax"

# Day names array pointers (for easy lookup by day index)
day_names:
  .word monday_label, tuesday_label, wednesday_label, thursday_label, friday_label, saturday_label

# ============================================
# SUBJECT DIFFICULTY RATINGS (1=Easy, 5=Hardest)
# ============================================
# Used to prioritize study during free slots
# Hardest → Easiest: SMAI(5) > TOC(4) > DL(3) > EM(3) > FOCS(2) > ILGC(1)

subject_smai:      .asciiz "Search Methods in AI"
smai_difficulty:   .word 5                  # HARDEST

subject_toc:       .asciiz "Theory of Computation"
toc_difficulty:    .word 4                  # 2nd Hardest

subject_dl:        .asciiz "Deep Learning"
dl_difficulty:     .word 3                  # 3rd

subject_em:        .asciiz "Electromagnetics"
em_difficulty:     .word 3                  # 3rd

subject_focs:      .asciiz "Fundamentals of CS"
focs_difficulty:   .word 2                  # 4th

subject_ilgc:      .asciiz "ILGC"
ilgc_difficulty:   .word 1                  # Easiest

subject_nt:        .asciiz "Narrative Twists"
nt_difficulty:     .word 1                  # Easiest

# Study recommendation based on free time
study_rec_header:  .asciiz "\n===== SMART STUDY RECOMMENDATIONS (For Free Slots 9 AM - 5 PM) ====="
study_line1:       .asciiz "1. SMAI (Hardest) - Study when fresh\n"
study_line2:       .asciiz "2. TOC (2nd Hardest) - After SMAI\n"
study_line3:       .asciiz "3. DL, EM, FOCS - Quick reviews & assignments\n"
study_line4:       .asciiz "4. NT - Last priority\n"

.text
.globl main

# ============================================
# HELPER FUNCTION: Get current day of week
# Uses system calls if available, otherwise defaults to Monday
# Returns: $v0 = day index (0=Mon, 1=Tue, ..., 5=Sat)
# ============================================
get_day_of_week:
  # For now, default to Monday (0) - can be enhanced with syscall
  # In a real system, would call system time syscall
  li $v0, 0                          # Default: Monday (0)
  jr $ra

# ============================================
# HELPER FUNCTION: Display personalization info
# Shows how student ID affects program behavior
# ============================================
display_personalization:
  la $a0, person_header
  li $v0, 4
  syscall
  
  # Focus Day
  la $a0, focus_day_str
  li $v0, 4
  syscall
  lw $a0, focus_day
  li $v0, 1
  syscall
  la $a0, focus_day_explain
  li $v0, 4
  syscall
  
  # Campus Personality based on (ID >> 2) % 4
  la $a0, activity_pref_str
  li $v0, 4
  syscall
  lw $t0, campus_personality
  
  # Display personality type based on value
  beq $t0, 0, personality_library_type
  beq $t0, 1, personality_sports_type
  beq $t0, 2, personality_wellness_type
  beq $t0, 3, personality_social_type
  j skip_personality
  
personality_library_type:
  la $a0, personality_library
  li $v0, 4
  syscall
  j skip_personality
  
personality_sports_type:
  la $a0, personality_sports
  li $v0, 4
  syscall
  j skip_personality
  
personality_wellness_type:
  la $a0, personality_wellness
  li $v0, 4
  syscall
  j skip_personality
  
personality_social_type:
  la $a0, personality_social
  li $v0, 4
  syscall
  
skip_personality:
  # Optimal Study Time based on sum of digits % 5
  la $a0, study_time_str
  li $v0, 4
  syscall
  lw $t1, optimal_study_time
  
  # Display study time based on value
  beq $t1, 0, study_morning_type
  beq $t1, 1, study_afternoon_type
  beq $t1, 2, study_evening_type
  beq $t1, 3, study_late_type
  beq $t1, 4, study_midnight_type
  j skip_study_time
  
study_morning_type:
  la $a0, study_morning
  li $v0, 4
  syscall
  j skip_study_time
  
study_afternoon_type:
  la $a0, study_afternoon
  li $v0, 4
  syscall
  j skip_study_time
  
study_evening_type:
  la $a0, study_evening
  li $v0, 4
  syscall
  j skip_study_time
  
study_late_type:
  la $a0, study_late
  li $v0, 4
  syscall
  j skip_study_time
  
study_midnight_type:
  la $a0, study_midnight
  li $v0, 4
  syscall
  
skip_study_time:
  la $a0, newline
  li $v0, 4
  syscall
  
  jr $ra

# ============================================
# HELPER FUNCTION: Calculate time remaining until next class
# For Saturday: Next class at 11:00 AM
# Assumes current time is 9:00 AM
# ============================================
calculate_time_remaining:
  # Current time: 12:00 PM (Saturday)
  # Currently in LUNCH BREAK (12:00 PM - 2:00 PM = 2 hours = 120 minutes)
  # Next class: 2:00 PM (ILGC - 2201)
  
  la $a0, next_class_header
  li $v0, 4
  syscall
  
  # Display lunch break info
  la $a0, lunch_note
  li $v0, 4
  syscall
  
  # Display time remaining message
  la $a0, time_remaining_msg
  li $v0, 4
  syscall
  
  # Display minutes value (120 minutes = 2 hours until next class at 2 PM)
  li $a0, 120
  li $v0, 1
  syscall
  
  la $a0, minutes_msg
  li $v0, 4
  syscall
  
  jr $ra

# ============================================
# HELPER FUNCTION: Display subject difficulty ratings
# Shows which subjects to study during free slots (hardest first)
# ============================================
display_subject_difficulty:
  la $a0, subject_difficulty_header
  li $v0, 4
  syscall
  
  # SMAI - Hardest
  la $a0, subject_smai
  li $v0, 4
  syscall
  la $a0, difficulty_rating
  li $v0, 4
  syscall
  lw $a0, smai_difficulty
  li $v0, 1
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  # TOC - 2nd Hardest
  la $a0, subject_toc
  li $v0, 4
  syscall
  la $a0, difficulty_rating
  li $v0, 4
  syscall
  lw $a0, toc_difficulty
  li $v0, 1
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  # DL - 3rd
  la $a0, subject_dl
  li $v0, 4
  syscall
  la $a0, difficulty_rating
  li $v0, 4
  syscall
  lw $a0, dl_difficulty
  li $v0, 1
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  # EM - 3rd
  la $a0, subject_em
  li $v0, 4
  syscall
  la $a0, difficulty_rating
  li $v0, 4
  syscall
  lw $a0, em_difficulty
  li $v0, 1
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  # FOCS - 4th
  la $a0, subject_focs
  li $v0, 4
  syscall
  la $a0, difficulty_rating
  li $v0, 4
  syscall
  lw $a0, focs_difficulty
  li $v0, 1
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  # NT - 4th
  la $a0, subject_nt
  li $v0, 4
  syscall
  la $a0, difficulty_rating
  li $v0, 4
  syscall
  lw $a0, nt_difficulty
  li $v0, 1
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  jr $ra

# ============================================
# HELPER FUNCTION: Display smart study recommendations
# ============================================
display_study_recommendations:
  la $a0, study_rec_header
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  la $a0, study_line1
  li $v0, 4
  syscall
  la $a0, study_line2
  li $v0, 4
  syscall
  la $a0, study_line3
  li $v0, 4
  syscall
  la $a0, study_line4
  li $v0, 4
  syscall
  
  jr $ra

# ============================================
# HELPER FUNCTION: Smart location recommendation
# Based on free slot duration and time of day
# ============================================
recommend_location:
  la $a0, location_rec_header
  li $v0, 4
  syscall
  
  # Free slot duration logic
  la $a0, hostel_2hrs
  li $v0, 4
  syscall
  la $a0, library_short
  li $v0, 4
  syscall
  
  # Check if Saturday (your priority day)
  # If day index ($s0) == 5, it's Saturday
  bne $s0, 5, skip_saturday_note
  la $a0, saturday_note
  li $v0, 4
  syscall
  
skip_saturday_note:
  jr $ra

main:
  # Print header
  la $a0, header
  li $v0, 4
  syscall

  # Display current time
  la $a0, current_time_str
  li $v0, 4
  syscall

  # Get current day of week
  jal get_day_of_week
  move $s0, $v0                      # Save day index in $s0
  li $s0, 5                          # Force Saturday (day index 5)

  # Print student line: "Student: [Your ID] | [Current Day]"
  la $a0, student_line
  li $v0, 4
  syscall
  la $a0, student_id
  li $v0, 4
  syscall
  la $a0, pipe
  li $v0, 4
  syscall
  
  # Print day name based on day index
  la $t0, day_names
  sll $t1, $s0, 2                    # Multiply day index by 4 (word size)
  add $t1, $t0, $t1
  lw $a0, 0($t1)
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall

  # Display personalization profile
  jal display_personalization
  
  # ========== TODAY'S SCHEDULE ==========
  la $a0, today_schedule_header
  li $v0, 4
  syscall
  
  # Normal Timetable
  la $a0, original_tt_header
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  la $a0, original_class1
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  la $a0, original_lunch
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  la $a0, original_class2
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  # Calculate time remaining until next class
  jal calculate_time_remaining
  la $a0, newline
  li $v0, 4
  syscall
  
  # Free Slots & Study Plan
  la $a0, smart_study_header
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  la $a0, breakfast_slot
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, suggestion_breakfast
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  la $a0, study_slot1
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, suggestion_free1
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  la $a0, study_slot2
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, suggestion_slot2
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  la $a0, slot_evening
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, suggestion_dl_em
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  # ========== EVENING ROUTINE ==========
  la $a0, evening_header
  li $v0, 4
  syscall
  la $a0, snacks_time
  li $v0, 4
  syscall
  la $a0, sports_time
  li $v0, 4
  syscall
  la $a0, dinner_time
  li $v0, 4
  syscall
  la $a0, free_after_dinner
  li $v0, 4
  syscall
  la $a0, sleep_time
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall

  # ========== ACADEMIC OVERVIEW ==========
  la $a0, academic_header
  li $v0, 4
  syscall

  la $a0, cgpa_label
  li $v0, 4
  syscall
  l.s $f12, current_cgpa_val
  li $v0, 2              # Print float
  syscall
  la $a0, credits_label
  li $v0, 4
  syscall
  # Display 102 (78 + 24 from sem5)
  li $a0, 102
  li $v0, 1              # Print integer
  syscall
  la $a0, slash
  li $v0, 4
  syscall
  lw $a0, total_credits_req
  li $v0, 1              # Print integer
  syscall
  # Add (24) label for semester 5
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, sem5_label
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall

  la $a0, target_label
  li $v0, 4
  syscall
  l.s $f12, target_cgpa_val
  li $v0, 2              # Print float
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  # Display credit plan header
  la $a0, credit_plan_header
  li $v0, 4
  syscall
  
  # Display realistic 9.5 SGPA goal for all remaining semesters
  # With 9.5 SGPA in all 3 remaining semesters (66 credits):
  # Final CGPA = (8.18 * 78 + 9.5 * 66) / 160 = (638.04 + 627) / 160 = 8.11
  
  li.s $f12, 9.5                  # Realistic goal: 9.5 SGPA
  
  # Display Semester 5 Plan
  la $a0, sem5_plan
  li $v0, 4
  syscall
  li $v0, 2
  syscall                          # Print 9.5
  la $a0, newline
  li $v0, 4
  syscall
  
  # Display Semester 6 Plan (same SGPA)
  la $a0, sem6_plan
  li $v0, 4
  syscall
  li $v0, 2
  syscall                          # Print 9.5
  la $a0, newline
  li $v0, 4
  syscall
  
  # Display Semester 7 Plan (same SGPA)
  la $a0, sem7_plan
  li $v0, 4
  syscall
  li $v0, 2
  syscall                          # Print 9.5
  la $a0, newline
  li $v0, 4
  syscall
  
  # Display max achievable note
  la $a0, max_achievable
  li $v0, 4
  syscall

  # ========== ATTENDANCE PLANNER ==========
  la $a0, attendance_header
  li $v0, 4
  syscall
  la $a0, att_intro
  li $v0, 4
  syscall
  la $a0, attend1
  li $v0, 4
  syscall
  la $a0, attend2
  li $v0, 4
  syscall
  la $a0, attend3
  li $v0, 4
  syscall
  la $a0, attend4
  li $v0, 4
  syscall
  la $a0, attend5
  li $v0, 4
  syscall
  la $a0, attend6
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall

  # ========== SMART SUGGESTIONS & ACTIVITY RECOMMENDATIONS ==========
  la $a0, smart_suggestions_header
  li $v0, 4
  syscall
  
  # Activity recommendations
  la $a0, basketball_activity
  li $v0, 4
  syscall
  la $a0, geek_room_note
  li $v0, 4
  syscall
  la $a0, robotics_note
  li $v0, 4
  syscall
  la $a0, free_evening_slot
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  # Display subject difficulty ratings
  jal display_subject_difficulty
  la $a0, newline
  li $v0, 4
  syscall
  
  # Display study recommendations
  jal display_study_recommendations
  la $a0, newline
  li $v0, 4
  syscall
  
  # Call smart location recommendation function
  jal recommend_location

  # Exit program
  li $v0, 10
  syscall
