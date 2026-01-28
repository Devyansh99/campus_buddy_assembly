.data

# ============================================
# STUDENT DATA
# ============================================
student_id_prefix:    .asciiz "U2023"
input_buffer:         .space 10
day_input_buffer:     .space 10
time_input_buffer:    .space 10
current_cgpa_val:     .float 8.18
target_cgpa_val:      .float 8.3
completed_credits:    .word 78
sem_credits:          .word 24
total_credits_req:    .word 160

# Subject definitions from campus_buddy
subject_smai:         .asciiz "Search Methods in AI"
subject_toc:          .asciiz "Theory of Computation"
subject_dl:           .asciiz "Deep Learning"
subject_em:           .asciiz "Electromagnetics"
subject_focs:         .asciiz "Fundamentals of CS"
subject_nt:           .asciiz "Narrative Twists"

# Attendance data for 6 subjects
attend_attended:      .word 22, 20, 18, 25, 21, 23
attend_total:         .word 25, 24, 20, 25, 25, 25
attend_subject:       .asciiz "FOCS", "NT", "DL", "SMAI", "TOC", "EM"
attend_weights:       .word 10, 20, 10, 0, 10, 10

# ============================================
# HEADERS AND PROMPTS
# ============================================
header:               .asciiz "=== CAMPUS BUDDY - PERSONALIZED DASHBOARD ===\n"
id_prompt:            .asciiz "Enter last 3 digits of Student ID (e.g., 107): "
day_prompt:           .asciiz "Enter day (0=Monday, 1=Tuesday, ..., 5=Saturday): "
time_prompt:          .asciiz "Enter current time (HHMM format, e.g., 1000 for 10:00 AM): "

# Output strings
divider:              .asciiz "=====================================================\n"
newline:              .asciiz "\n"
pipe:                 .asciiz " | "
colon:                .asciiz ": "
time_sep:             .asciiz ":"
student_line:         .asciiz "Student ID: "

# Day names
day_names:            .asciiz "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
day_name_0:           .asciiz "Monday"
day_name_1:           .asciiz "Tuesday"
day_name_2:           .asciiz "Wednesday"
day_name_3:           .asciiz "Thursday"
day_name_4:           .asciiz "Friday"
day_name_5:           .asciiz "Saturday"

# Personality types
personality_header:   .asciiz "\n=== YOUR PERSONALITY PROFILE ===\n"
personality_calc:     .asciiz "Personality Type (ID % 4): "
personality_1:        .asciiz "Very Hardworking (The Grinder)\n"
personality_2:        .asciiz "Athletic (The Athlete)\n"
personality_3:        .asciiz "Balanced Performer (The Moderate)\n"
personality_4:        .asciiz "Social Butterfly (The Connector)\n"

personality_desc_1:   .asciiz "Traits: Focused, goal-oriented, disciplined\n"
personality_desc_2:   .asciiz "Traits: Physical, energetic, sports-focused\n"
personality_desc_3:   .asciiz "Traits: Well-rounded, flexible, adaptive\n"
personality_desc_4:   .asciiz "Traits: Community-focused, collaborative\n"

# Detailed personality activities
activity_hardwork_study: .asciiz "✓ Study Location Strategy: Hostel for ≥2h, Library for <2h\n"
activity_hardwork_focus: .asciiz "✓ Focus: Hardest subjects first, deep concentration\n"
activity_hardwork_time:  .asciiz "✓ Best Study Time: Early morning, quiet environments\n"
activity_hardwork_break: .asciiz "✓ Breaks: Minimal, high discipline\n"

activity_athletic_sports: .asciiz "✓ Main Activity: Sports & Physical Exercise\n"
activity_athletic_balance: .asciiz "✓ Study Balance: 30-40% study, 60-70% sports/recreation\n"
activity_athletic_time:  .asciiz "✓ Peak Time: Evening (6-7 PM basketball), mornings\n"
activity_athletic_subject: .asciiz "✓ Study Focus: Easiest subjects during free time\n"

activity_balanced_mix:   .asciiz "✓ Approach: 60% Study, 40% Recreation\n"
activity_balanced_flex:  .asciiz "✓ Flexibility: Adapts based on mood and workload\n"
activity_balanced_time:  .asciiz "✓ Study Windows: Any time works (flexible)\n"
activity_balanced_social: .asciiz "✓ Social Mix: Mix of group study and solo work\n"

activity_social_group:   .asciiz "✓ Preference: Group study sessions & club meetings\n"
activity_social_clubs:   .asciiz "✓ Activities: Geek Room, Robotics, collaborative projects\n"
activity_social_time:    .asciiz "✓ Best Time: Evening hangouts (9-11 PM)\n"
activity_social_subject: .asciiz "✓ Study: Only light/easy subjects in groups\n"
schedule_header:      .asciiz "\n========== TODAY'S SCHEDULE =========="
current_status_msg:   .asciiz "Current Status: "
status_in_class:      .asciiz "IN CLASS"
status_free:          .asciiz "FREE TIME (Next class in "
status_lunch:         .asciiz "LUNCH BREAK"

# Recommendation messages
recommendation_header: .asciiz "\n========== PERSONALIZED RECOMMENDATIONS =========="
smart_suggestions_header: .asciiz "\n========== SMART SUGGESTIONS: [Personalized Activity Recommendations] =========="
in_class_msg:         .asciiz "IN CLASS - "
free_time_msg:        .asciiz "FREE TIME - "
free_duration_msg:     .asciiz "Time remaining: "
min_msg:               .asciiz " minutes\n"
recommendation_msg:    .asciiz "Recommendation: "

# Activity recommendations based on personality
activity_hardworking_2h:   .asciiz "Go to Hostel → Freshen up → Study hardest subject for 2 hours\n"
activity_hardworking_1h:   .asciiz "Go to Library → Study medium difficulty subject for 1 hour\n"
activity_hardworking_30m:  .asciiz "Quick review of notes\n"

activity_athletic_2h:      .asciiz "Go to Sports Complex → Basketball/Gym + Study easiest subject\n"
activity_athletic_1h:      .asciiz "Light exercise + Study easiest subject\n"
activity_athletic_30m:     .asciiz "Stretch/Walk + Snack break\n"

activity_balanced_2h:      .asciiz "Study medium subject → Sports/Recreation break\n"
activity_balanced_1h:      .asciiz "Study light subject → Relax/Snack\n"
activity_balanced_30m:     .asciiz "Snack + Chat with friends\n"

activity_social_2h:        .asciiz "Group study session or Club meeting (Geek Room/Robotics)\n"
activity_social_1h:        .asciiz "Casual hangout with friends + Light study\n"
activity_social_30m:       .asciiz "Chat with friends in common area\n"

# FREE SLOTS BY DAY - Now with personality-based activity descriptions
free_slots_header:    .asciiz "\n========== FREE TIME SLOTS TODAY ==========\n"
free_slot_item:       .asciiz "  • "
mon_free_slot1:       .asciiz "10:15 AM - 12:00 PM (105 mins) - Study medium subject → Sports/Recreation break\n"
mon_free_slot2:       .asciiz "3:15 PM - 5:00 PM (105 mins) - Group study session or Club meeting (Geek Room/Robotics)\n"
tue_free_slot1:       .asciiz "9:00 AM - 11:00 AM (120 mins) - Go to Hostel → Freshen up → Study hardest subject\n"
tue_free_slot2:       .asciiz "3:15 PM - 4:00 PM (45 mins) - Quick review of notes\n"
wed_free_slot1:       .asciiz "10:15 AM - 12:00 PM (105 mins) - Go to Sports Complex → Basketball/Gym + Study easiest subject\n"
wed_free_slot2:       .asciiz "3:15 PM - 5:00 PM (105 mins) - Casual hangout with friends + Light study\n"
thu_free_slot1:       .asciiz "3:15 PM - 4:00 PM (45 mins) - Stretch/Walk + Snack break\n"
fri_free_slot1:       .asciiz "2:00 PM - 4:00 PM (120 mins) - Go to Library → Study medium difficulty subject\n"
sat_free_slot1:       .asciiz "9:00 AM - 12:00 PM (180 mins) - Light exercise + Study easiest subject\n"
sat_free_slot2:       .asciiz "12:00 PM - 2:00 PM (120 mins) - Study light subject → Relax/Snack\n"
sat_free_slot3:       .asciiz "5:00 PM - 9:00 PM (240 mins) - Snack + Chat with friends\n"
no_free_slots:        .asciiz "\nNo free slots between 9 AM - 5 PM today (continuous classes)\n"

# 8-9 AM BREAKFAST
breakfast_header:     .asciiz "8:00-9:00 AM: BREAKFAST & FRESHEN UP\n"
hard_breakfast:       .asciiz "  → Go to Mess for chai & samosa (quick 30min), then review class notes\n"
ath_breakfast:        .asciiz "  → Quick breakfast, then morning jog around campus (30min)\n"
bal_breakfast:        .asciiz "  → Breakfast at Mess, then 15min light stretching\n"
social_breakfast:     .asciiz "  → Meet roommates for breakfast at Mess, plan the day\n"

# 9-11 PM FREE SLOT ACTIVITIES
evening_9pm_header:   .asciiz "\n=== 9:00 PM - 11:00 PM FREE SLOT ACTIVITIES ===\n"
meeting_slot:         .asciiz "[9:00-10:00 PM] Geek Room Meeting / Club Activity\n"
hard_evening_1:       .asciiz "[10:00-11:00 PM] FOCS assignment or DL project work (Deep Learning models)\n"
hard_evening_2:       .asciiz "[10:00-11:00 PM] Review ToC concepts or work on SMAI research papers\n"
hard_evening_3:       .asciiz "[10:00-11:00 PM] Electromagnetics problem-solving or lab report writing\n"
ath_evening_1:        .asciiz "[10:00-11:00 PM] Gym session or badminton court booking planning\n"
ath_evening_2:        .asciiz "[10:00-11:00 PM] Swimming or evening fitness routine (30min), then relax\n"
ath_evening_3:        .asciiz "[10:00-11:00 PM] Sports discussion with friends or plan weekend matches\n"
bal_evening_1:        .asciiz "[10:00-11:00 PM] Light study + 20min casual chat with friends\n"
bal_evening_2:        .asciiz "[10:00-11:00 PM] Quick assignment check-in + watch tech video\n"
bal_evening_3:        .asciiz "[10:00-11:00 PM] Mix of study and friendly hangout at common room\n"
social_evening_1:     .asciiz "[10:00-11:00 PM] Board games or movie session with roommates\n"
social_evening_2:     .asciiz "[10:00-11:00 PM] Group projects discussion + chai circle at hostel\n"
social_evening_3:     .asciiz "[10:00-11:00 PM] Organize weekend hangout plans with friend group\n"

# Evening activities
evening_header:       .asciiz "\n========== EVENING & NIGHT SCHEDULE =========="
sports_time:          .asciiz "6:00-7:00 PM: Basketball Practice [Sports Complex]\n"
dinner_time:          .asciiz "7:30-9:00 PM: Dinner [Dining Hall]\n"
geek_room:            .asciiz "9:00-10:00 PM: Geek Room Club Meeting (Monday-Saturday)\n"
robotics_sunday:      .asciiz "9:00-10:00 PM: Robotics Lab Meeting (Every Sunday)\n"
free_evening:         .asciiz "10:00-11:30 PM: Free Time (Projects, Friends, Relaxation)\n"
sleep_time:           .asciiz "11:30 PM: Recommended Sleep Time\n"

# Academic sections
academic_header:      .asciiz "\n========== ACADEMIC OVERVIEW ==========\n"
cgpa_label:           .asciiz "Current CGPA: "
credits_label:        .asciiz " | Credits: "
sem5_label:           .asciiz "(Semester 5: 24 credits)\n"
target_label:         .asciiz "Target CGPA: "
credit_plan_header:   .asciiz "\nCredit Plan (Personalized):\n"
sem5_plan:            .asciiz "Sem 5 Credits: 24 -> Goal SGPA: "
sem6_plan:            .asciiz "Sem 6 Credits: 24 -> Goal SGPA: "
sem7_plan:            .asciiz "Sem 7 Credits: 18 -> Goal SGPA: "
max_achievable:       .asciiz "\nNote: With 9.5 SGPA in all remaining semesters, maximum achievable CGPA = 8.11\n"
slash:                .asciiz "/"

attendance_header:    .asciiz "\n========== ATTENDANCE PLANNER ==========\n"
att_intro:            .asciiz "Calculation: minimum classes x so that (attended+x)/(total+x) >= 75% cutoff\n\n"
attend1:              .asciiz "[FOCS]: 22/25 classes (88%) -> Good standing! (Grading: 10% weightage)\n"
attend2:              .asciiz "[Narrative Twists (NT)]: 20/24 classes (83.33%) -> Good standing! (Grading: 20% weightage)\n"
attend3:              .asciiz "[Deep Learning (DL)]: 18/20 classes (90%) -> Excellent! (Grading: 10% weightage)\n"
attend4:              .asciiz "[Search Methods in AI (SMAI)]: 25 total classes -> (Grading: No attendance weightage)\n"
attend5:              .asciiz "[Theory of Computation (ToC)]: 21/25 classes (84%) -> Good standing! (Grading: 10% weightage)\n"
attend6:              .asciiz "[Electromagnetics (EM)]: 23/25 classes (92%) -> Excellent! (Grading: 10% weightage)\n"

subject_diff_header:  .asciiz "\n========== RECOMMENDED ACTIVITIES FOR FREE TIME ==========\n"
activity_header:      .asciiz "\nEVENING & NIGHT SCHEDULE ==========\n"
snacks_time:          .asciiz "5:30-6:00 PM: Snack break at Mess\n"
sports_time_ev:       .asciiz "6:00-7:00 PM: Basketball \n"
dinner_time_ev:       .asciiz "7:30-9:00 PM: Dinner at Mess\n"
free_after_dinner:    .asciiz "9:00-11:30 PM: Free time for assignments, clubs, friends, or rest\n"

# Schedule data for each day
# MONDAY: 9-10:15 DL | 12-1 TOC | 1-2 Lunch | 2-3:15 FCS
mon_class1:           .asciiz "9:00-10:15 AM Deep Learning - 2201\n"
mon_class2:           .asciiz "12:00-1:00 PM Theory of Computation - 2202\n"
mon_lunch:            .asciiz "1:00-2:00 PM LUNCH BREAK\n"
mon_class3:           .asciiz "2:00-3:15 PM Fundamentals of CS - 2201\n"
mon_free1:            .asciiz "10:15-12:00 PM [FREE - 1h 45min]\n"
mon_free2:            .asciiz "3:15-5:00 PM [FREE - 1h 45min]\n"

# TUESDAY: 9-11 FREE | 11-12:15 EM | 12:15-2 Lunch | 2-3:15 SMAI | 3:15-4 FREE | 4-5 NT
tue_free1:            .asciiz "9:00-11:00 AM [FREE - 2h]\n"
tue_class1:           .asciiz "11:00-12:15 PM Electromagnetics - 2203\n"
tue_lunch:            .asciiz "12:15-2:00 PM LUNCH BREAK\n"
tue_class2:           .asciiz "2:00-3:15 PM Search Methods in AI - 1001 B\n"
tue_free2:            .asciiz "3:15-4:00 PM [FREE - 45min]\n"
tue_class3:           .asciiz "4:00-5:00 PM Narrative Twists - 2201\n"

# WEDNESDAY: 9-10:15 DL | 10:15-12 FREE | 12-1 TOC | 1-2 Lunch | 2-3:15 FCS | 3:15-5 FREE | 5-5:30 ILGC
wed_class1:           .asciiz "9:00-10:15 AM Deep Learning - 2201\n"
wed_free1:            .asciiz "10:15-12:00 PM [FREE - 1h 45min]\n"
wed_class2:           .asciiz "12:00-1:00 PM Theory of Computation - 2202\n"
wed_lunch:            .asciiz "1:00-2:00 PM LUNCH BREAK\n"
wed_class3:           .asciiz "2:00-3:15 PM Fundamentals of CS - 2201\n"
wed_free2:            .asciiz "3:15-5:00 PM [FREE - 1h 45min]\n"
wed_class4:           .asciiz "5:00-5:30 PM ILGC Meeting - 2201\n"

# THURSDAY: 9-11 FCS Lab | 11-12:15 EM | 12:15-2 Lunch | 2-3:15 SMAI | 3:15-4 FREE | 4-5 NT
thu_class1:           .asciiz "9:00-11:00 AM Fundamentals of CS Lab - 2201\n"
thu_class2:           .asciiz "11:00-12:15 PM Electromagnetics - 2203\n"
thu_lunch:            .asciiz "12:15-2:00 PM LUNCH BREAK\n"
thu_class3:           .asciiz "2:00-3:15 PM Search Methods in AI - 1001 B\n"
thu_free1:            .asciiz "3:15-4:00 PM [FREE - 45min]\n"
thu_class4:           .asciiz "4:00-5:00 PM Narrative Twists - 2201\n"

# FRIDAY: 9-11 DL Lab | 11-12 SMAI Tut | 12-1 TOC | 1-2 Lunch | 2-4 FREE | 4-5 TOC Tut
fri_class1:           .asciiz "9:00-11:00 AM Deep Learning Lab - 2201\n"
fri_class2:           .asciiz "11:00-12:00 PM Search Methods in AI Tutorial - 1001 B\n"
fri_class3:           .asciiz "12:00-1:00 PM Theory of Computation - 2202\n"
fri_lunch:            .asciiz "1:00-2:00 PM LUNCH BREAK\n"
fri_free1:            .asciiz "2:00-4:00 PM [FREE - 2h]\n"
fri_class4:           .asciiz "4:00-5:00 PM Theory of Computation Tutorial - 2202\n"

# SATURDAY: 9-11 FREE | 11-12 EM Tut | 12-2 FREE | 2-5 ILGC
sat_free1:            .asciiz "9:00-11:00 AM [FREE - 2h]\n"
sat_class1:           .asciiz "11:00-12:00 PM Electromagnetics Tutorial - 2203\n"
sat_free2:            .asciiz "12:00-2:00 PM [FREE - 2h]\n"
sat_class2:           .asciiz "2:00-5:00 PM ILGC - 2201\n"
sat_free3:            .asciiz "5:00-9:00 PM [FREE - 4h]\n"

.text
.globl main

# ========================================
# HELPER: Display day name
# Input: $a0 = day index (0-5)
# ========================================
display_day_name:
  beq $a0, 0, show_day_0
  beq $a0, 1, show_day_1
  beq $a0, 2, show_day_2
  beq $a0, 3, show_day_3
  beq $a0, 4, show_day_4
  beq $a0, 5, show_day_5
  jr $ra

show_day_0:
  la $a0, day_name_0
  li $v0, 4
  syscall
  jr $ra
show_day_1:
  la $a0, day_name_1
  li $v0, 4
  syscall
  jr $ra
show_day_2:
  la $a0, day_name_2
  li $v0, 4
  syscall
  jr $ra
show_day_3:
  la $a0, day_name_3
  li $v0, 4
  syscall
  jr $ra
show_day_4:
  la $a0, day_name_4
  li $v0, 4
  syscall
  jr $ra
show_day_5:
  la $a0, day_name_5
  li $v0, 4
  syscall
  jr $ra

# ========================================
# DISPLAY SCHEDULE FOR EACH DAY
# Input: $a0 = day index
# ========================================
display_schedule:
  move $t0, $a0
  beq $t0, 0, schedule_monday
  beq $t0, 1, schedule_tuesday
  beq $t0, 2, schedule_wednesday
  beq $t0, 3, schedule_thursday
  beq $t0, 4, schedule_friday
  beq $t0, 5, schedule_saturday
  jr $ra

schedule_monday:
  la $a0, mon_class1
  li $v0, 4
  syscall
  la $a0, mon_free1
  li $v0, 4
  syscall
  la $a0, mon_class2
  li $v0, 4
  syscall
  la $a0, mon_lunch
  li $v0, 4
  syscall
  la $a0, mon_class3
  li $v0, 4
  syscall
  la $a0, mon_free2
  li $v0, 4
  syscall
  jr $ra

schedule_tuesday:
  la $a0, tue_free1
  li $v0, 4
  syscall
  la $a0, tue_class1
  li $v0, 4
  syscall
  la $a0, tue_lunch
  li $v0, 4
  syscall
  la $a0, tue_class2
  li $v0, 4
  syscall
  la $a0, tue_free2
  li $v0, 4
  syscall
  la $a0, tue_class3
  li $v0, 4
  syscall
  jr $ra

schedule_wednesday:
  la $a0, wed_class1
  li $v0, 4
  syscall
  la $a0, wed_free1
  li $v0, 4
  syscall
  la $a0, wed_class2
  li $v0, 4
  syscall
  la $a0, wed_lunch
  li $v0, 4
  syscall
  la $a0, wed_class3
  li $v0, 4
  syscall
  la $a0, wed_free2
  li $v0, 4
  syscall
  la $a0, wed_class4
  li $v0, 4
  syscall
  jr $ra

schedule_thursday:
  la $a0, thu_class1
  li $v0, 4
  syscall
  la $a0, thu_class2
  li $v0, 4
  syscall
  la $a0, thu_lunch
  li $v0, 4
  syscall
  la $a0, thu_class3
  li $v0, 4
  syscall
  la $a0, thu_free1
  li $v0, 4
  syscall
  la $a0, thu_class4
  li $v0, 4
  syscall
  jr $ra

schedule_friday:
  la $a0, fri_class1
  li $v0, 4
  syscall
  la $a0, fri_class2
  li $v0, 4
  syscall
  la $a0, fri_class3
  li $v0, 4
  syscall
  la $a0, fri_lunch
  li $v0, 4
  syscall
  la $a0, fri_free1
  li $v0, 4
  syscall
  la $a0, fri_class4
  li $v0, 4
  syscall
  jr $ra

schedule_saturday:
  la $a0, sat_free1
  li $v0, 4
  syscall
  la $a0, sat_class1
  li $v0, 4
  syscall
  la $a0, sat_free2
  li $v0, 4
  syscall
  la $a0, sat_class2
  li $v0, 4
  syscall
  la $a0, sat_free3
  li $v0, 4
  syscall
  jr $ra

# ========================================
# CALCULATE NEXT FREE SLOT
# Input: $a0 = day index (0-5)
#        $a1 = current time in minutes
# Output: $v0 = free time duration (minutes)
# ========================================
calculate_next_free_slot:
  move $t0, $a0        # day index
  move $t1, $a1        # current time
  
  # Define free slots for each day [start_time, end_time]
  # MONDAY: 10:15-12:00 (615-720=105min), 3:15-5:00 (915-1020=105min)
  # TUESDAY: 9:00-11:00 (540-660=120min), 3:15-4:00 (915-960=45min)
  # WEDNESDAY: 10:15-12:00 (615-720=105min), 3:15-5:00 (915-1020=105min)
  # THURSDAY: 3:15-4:00 (915-960=45min)
  # FRIDAY: 2:00-4:00 (840-960=120min)
  # SATURDAY: 9:00-11:00 (540-660=120min), 12:00-2:00 (720-840=120min), 5:00-9:00 (1020-1260=240min)
  
  beq $t0, 0, free_monday
  beq $t0, 1, free_tuesday
  beq $t0, 2, free_wednesday
  beq $t0, 3, free_thursday
  beq $t0, 4, free_friday
  beq $t0, 5, free_saturday
  li $v0, 60           # Default: 1 hour
  jr $ra

free_monday:
  # Check first slot: 10:15 AM (615) - 12:00 PM (720)
  li $t2, 615          # 10:15 AM
  li $t3, 720          # 12:00 PM
  blt $t1, $t2, check_mon_slot2  # if time < 615, check next slot
  bge $t1, $t3, check_mon_slot2  # if time >= 720, check next slot
  # We're in first slot
  sub $v0, $t3, $t1
  jr $ra
  
check_mon_slot2:
  # Check second slot: 3:15 PM (915) - 5:00 PM (1020)
  li $t2, 915          # 3:15 PM
  li $t3, 1020         # 5:00 PM
  blt $t1, $t2, no_free_mon  # if time < 915, no free slot
  bge $t1, $t3, no_free_mon  # if time >= 1020, no free slot
  # We're in second slot
  sub $v0, $t3, $t1
  jr $ra
  
no_free_mon:
  li $v0, 0            # No free slot
  jr $ra

free_tuesday:
  # Check first slot: 9:00 AM (540) - 11:00 AM (660)
  li $t2, 540          # 9:00 AM
  li $t3, 660          # 11:00 AM
  blt $t1, $t2, check_tue_slot2  # if time < 540, check next slot
  bge $t1, $t3, check_tue_slot2  # if time >= 660, check next slot
  # We're in first slot
  sub $v0, $t3, $t1
  jr $ra
  
check_tue_slot2:
  # Check second slot: 3:15 PM (915) - 4:00 PM (960)
  li $t2, 915          # 3:15 PM
  li $t3, 960          # 4:00 PM
  blt $t1, $t2, no_free_tue  # if time < 915, no free slot
  bge $t1, $t3, no_free_tue  # if time >= 960, no free slot
  # We're in second slot
  sub $v0, $t3, $t1
  jr $ra
  
no_free_tue:
  li $v0, 0
  jr $ra

free_wednesday:
  # Check first slot: 10:15 AM (615) - 12:00 PM (720)
  li $t2, 615          # 10:15 AM
  li $t3, 720          # 12:00 PM
  blt $t1, $t2, check_wed_slot2  # if time < 615, check next slot
  bge $t1, $t3, check_wed_slot2  # if time >= 720, check next slot
  # We're in first slot
  sub $v0, $t3, $t1
  jr $ra
  
check_wed_slot2:
  # Check second slot: 3:15 PM (915) - 5:00 PM (1020)
  li $t2, 915          # 3:15 PM
  li $t3, 1020         # 5:00 PM
  blt $t1, $t2, no_free_wed  # if time < 915, no free slot
  bge $t1, $t3, no_free_wed  # if time >= 1020, no free slot
  # We're in second slot
  sub $v0, $t3, $t1
  jr $ra
  
no_free_wed:
  li $v0, 0
  jr $ra

free_thursday:
  # Check slot: 3:15 PM (915) - 4:00 PM (960)
  li $t2, 915          # 3:15 PM
  li $t3, 960          # 4:00 PM
  blt $t1, $t2, no_free_thu  # if time < 915, no free slot
  bge $t1, $t3, no_free_thu  # if time >= 960, no free slot
  # We're in the slot
  sub $v0, $t3, $t1
  jr $ra
  
no_free_thu:
  li $v0, 0
  jr $ra

free_friday:
  # Check slot: 2:00 PM (840) - 4:00 PM (960)
  li $t2, 840          # 2:00 PM
  li $t3, 960          # 4:00 PM
  blt $t1, $t2, no_free_fri  # if time < 840, no free slot
  bge $t1, $t3, no_free_fri  # if time >= 960, no free slot
  # We're in the slot
  sub $v0, $t3, $t1
  jr $ra
  
no_free_fri:
  li $v0, 0
  jr $ra

free_saturday:
  # Check first slot: 9:00 AM (540) - 11:00 AM (660)
  li $t2, 540          # 9:00 AM
  li $t3, 660          # 11:00 AM
  blt $t1, $t2, check_sat_slot2  # if time < 540, check next slot
  bge $t1, $t3, check_sat_slot2  # if time >= 660, check next slot
  # We're in first slot
  sub $v0, $t3, $t1
  jr $ra
  
check_sat_slot2:
  # Check second slot: 12:00 PM (720) - 2:00 PM (840)
  li $t2, 720          # 12:00 PM
  li $t3, 840          # 2:00 PM
  blt $t1, $t2, check_sat_slot3  # if time < 720, check next slot
  bge $t1, $t3, check_sat_slot3  # if time >= 840, check next slot
  # We're in second slot
  sub $v0, $t3, $t1
  jr $ra
  
check_sat_slot3:
  # Check third slot: 5:00 PM (1020) - 9:00 PM (1260)
  li $t2, 1020         # 5:00 PM
  li $t3, 1260         # 9:00 PM
  blt $t1, $t2, no_free_sat  # if time < 1020, no free slot
  bge $t1, $t3, no_free_sat  # if time >= 1260, no free slot
  # We're in third slot
  sub $v0, $t3, $t1
  jr $ra
  
no_free_sat:
  li $v0, 0
  jr $ra

# ========================================
# GET CURRENT CLASS ADDRESS (returns address only)
# Input: $a0 = day index (0-5)
#        $a1 = current time in minutes
# Output: $v0 = address of class string (or 0 if free/lunch/no class)
# ========================================
# OLD get_current_class_simple REMOVED - now inlined in student_in_class
# ========================================
  
check_mon_class2:
  li $t2, 720          # 12:00 PM (12*60)
  li $t3, 780          # 1:00 PM (13*60)
  blt $t1, $t2, check_mon_class3  # if time < 720, check next slot
  bge $t1, $t3, check_mon_class3  # if time >= 780, check next slot
  la $v0, mon_class2
  jr $ra
  
check_mon_class3:
  li $t2, 780          # 1:00 PM
  li $t3, 840          # 2:00 PM (14*60)
  blt $t1, $t2, check_mon_class4  # if time < 780, check next slot
  bge $t1, $t3, check_mon_class4  # if time >= 840, check next slot
  li $v0, 0                       # lunch - return 0
  jr $ra
  
check_mon_class4:
  li $t2, 840          # 2:00 PM
  li $t3, 915          # 3:15 PM (15*60+15)
  blt $t1, $t2, no_class_mon      # if time < 840, no class
  bge $t1, $t3, no_class_mon      # if time >= 915, no class
  la $v0, mon_class3
  jr $ra
  
no_class_mon:
  li $v0, 0            # No class at this time
  jr $ra

# TUESDAY: 9-11 FREE | 11-12:15 EM | 12:15-2 LUNCH | 2-3:15 SMAI | 3:15-4 FREE | 4-5 NT
check_tuesday_class:
  li $t2, 660          # 11:00 AM (11*60)
  li $t3, 735          # 12:15 PM (12*60+15)
  blt $t1, $t2, check_tue_class2  # if time < 660, check next slot
  bge $t1, $t3, check_tue_class2  # if time >= 735, check next slot
  la $v0, tue_class1
  jr $ra
  
check_tue_class2:
  li $t2, 735          # 12:15 PM
  li $t3, 840          # 2:00 PM (14*60)
  blt $t1, $t2, check_tue_class3  # if time < 735, check next slot
  bge $t1, $t3, check_tue_class3  # if time >= 840, check next slot
  li $v0, 0                       # lunch - return 0
  jr $ra
  
check_tue_class3:
  li $t2, 840          # 2:00 PM
  li $t3, 915          # 3:15 PM
  blt $t1, $t2, check_tue_class4  # if time < 840, check next slot
  bge $t1, $t3, check_tue_class4  # if time >= 915, check next slot
  la $v0, tue_class2
  jr $ra
  
check_tue_class4:
  li $t2, 960          # 4:00 PM (16*60)
  li $t3, 1020         # 5:00 PM (17*60)
  blt $t1, $t2, no_class_tue  # if time < 960, no class
  bge $t1, $t3, no_class_tue  # if time >= 1020, no class
  la $v0, tue_class3
  jr $ra
  
no_class_tue:
  li $v0, 0
  jr $ra

# WEDNESDAY: 9-10:15 DL | 10:15-12 FREE | 12-1 TOC | 1-2 LUNCH | 2-3:15 FOCS | 3:15-5 FREE | 5-5:30 ILGC
check_wednesday_class:
  li $t2, 540          # 9:00 AM
  li $t3, 615          # 10:15 AM
  blt $t1, $t2, check_wed_class2
  bge $t1, $t3, check_wed_class2
  la $a0, wed_class1
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
check_wed_class2:
  li $t2, 720          # 12:00 PM
  li $t3, 780          # 1:00 PM
  blt $t1, $t2, check_wed_class3
  bge $t1, $t3, check_wed_class3
  la $a0, wed_class2
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
check_wed_class3:
  li $t2, 780          # 1:00 PM
  li $t3, 840          # 2:00 PM
  blt $t1, $t2, check_wed_class4
  bge $t1, $t3, check_wed_class4
  li $v0, 0                       # lunch
  jr $ra
  
check_wed_class4:
  li $t2, 840          # 2:00 PM
  li $t3, 915          # 3:15 PM
  blt $t1, $t2, check_wed_class5
  bge $t1, $t3, check_wed_class5
  la $a0, wed_class3
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
check_wed_class5:
  li $t2, 1020         # 5:00 PM
  li $t3, 1050         # 5:30 PM (17*60+30)
  blt $t1, $t2, no_class_wed
  bge $t1, $t3, no_class_wed
  la $a0, wed_class4
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
no_class_wed:
  li $v0, 0
  jr $ra

# THURSDAY: 9-11 FCS Lab | 11-12:15 EM | 12:15-2 LUNCH | 2-3:15 SMAI | 3:15-4 FREE | 4-5 NT
check_thursday_class:
  li $t2, 540          # 9:00 AM
  li $t3, 660          # 11:00 AM
  blt $t1, $t2, check_thu_class2
  bge $t1, $t3, check_thu_class2
  la $a0, thu_class1
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
check_thu_class2:
  li $t2, 660          # 11:00 AM
  li $t3, 735          # 12:15 PM
  blt $t1, $t2, check_thu_class3
  bge $t1, $t3, check_thu_class3
  la $a0, thu_class2
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
check_thu_class3:
  li $t2, 735          # 12:15 PM
  li $t3, 840          # 2:00 PM
  blt $t1, $t2, check_thu_class4
  bge $t1, $t3, check_thu_class4
  li $v0, 0                       # lunch
  jr $ra
  
check_thu_class4:
  li $t2, 840          # 2:00 PM
  li $t3, 915          # 3:15 PM
  blt $t1, $t2, check_thu_class5
  bge $t1, $t3, check_thu_class5
  la $a0, thu_class3
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
check_thu_class5:
  li $t2, 960          # 4:00 PM
  li $t3, 1020         # 5:00 PM
  blt $t1, $t2, no_class_thu
  bge $t1, $t3, no_class_thu
  la $a0, thu_class4
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
no_class_thu:
  li $v0, 0
  jr $ra

# FRIDAY: 9-11 DL Lab | 11-12 SMAI Tut | 12-1 TOC | 1-2 LUNCH | 2-4 FREE | 4-5 TOC Tut
check_friday_class:
  li $t2, 540          # 9:00 AM
  li $t3, 660          # 11:00 AM
  blt $t1, $t2, check_fri_class2
  bge $t1, $t3, check_fri_class2
  la $a0, fri_class1
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
check_fri_class2:
  li $t2, 660          # 11:00 AM
  li $t3, 720          # 12:00 PM
  blt $t1, $t2, check_fri_class3
  bge $t1, $t3, check_fri_class3
  la $a0, fri_class2
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
check_fri_class3:
  li $t2, 720          # 12:00 PM
  li $t3, 780          # 1:00 PM
  blt $t1, $t2, check_fri_class4
  bge $t1, $t3, check_fri_class4
  la $a0, fri_class3
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
check_fri_class4:
  li $t2, 780          # 1:00 PM
  li $t3, 840          # 2:00 PM
  blt $t1, $t2, check_fri_class5
  bge $t1, $t3, check_fri_class5
  li $v0, 0                       # lunch
  jr $ra
  
check_fri_class5:
  li $t2, 960          # 4:00 PM
  li $t3, 1020         # 5:00 PM
  blt $t1, $t2, no_class_fri
  bge $t1, $t3, no_class_fri
  la $a0, fri_class4
  li $v0, 4
  syscall
  li $v0, 0
  jr $ra
  
no_class_fri:
  li $v0, 0
  jr $ra

# SATURDAY: 9-11 FREE | 11-12 EM Tut | 12-2 FREE | 2-5 ILGC | 5-9 FREE
check_saturday_class:
  li $t2, 660          # 11:00 AM
  li $t3, 720          # 12:00 PM
  blt $t1, $t2, check_sat_class2
  bge $t1, $t3, check_sat_class2
  la $v0, sat_class1
  jr $ra
  
check_sat_class2:
  li $t2, 840          # 2:00 PM (14*60)
  li $t3, 1020         # 5:00 PM (17*60)
  blt $t1, $t2, no_class_sat
  bge $t1, $t3, no_class_sat
  la $v0, sat_class2
  jr $ra
  
no_class_sat:
  li $v0, 0
  jr $ra

# ========================================
# CHECK AND DISPLAY CURRENT STATUS
# Input: $a0 = personality (0-3)
#        $a1 = day (0-5)
#        $a2 = time in minutes
#        $a3 = free time duration (from calculate_next_free_slot)
# ========================================
display_personality_recommendation:
  move $s6, $a0        # personality
  move $s7, $a1        # day
  move $t0, $a2        # time in minutes
  move $t1, $a3        # free time duration
  
  # First, check if student is in a free slot
  beq $t1, 0, student_in_class
  
  # STUDENT IS IN FREE TIME
  la $a0, free_time_msg
  li $v0, 4
  syscall
  
  la $a0, free_duration_msg
  li $v0, 4
  syscall
  move $a0, $t1
  li $v0, 1
  syscall
  la $a0, min_msg
  li $v0, 4
  syscall
  
  la $a0, recommendation_msg
  li $v0, 4
  syscall
  
  # Recommend activity based on personality and free time
  move $a0, $s6
  move $a1, $t1
  jal recommend_activity
  jr $ra

student_in_class:
  # STUDENT IS IN CLASS - Show which class
  la $a0, in_class_msg
  li $v0, 4
  syscall
  
  # Get the current class based on day and time
  move $t2, $s7        # day index
  move $t3, $t0        # current time in minutes
  
  # Simple logic: just check if in a specific time range and display class
  beq $t2, 0, mon_check_inline
  beq $t2, 1, tue_check_inline
  beq $t2, 2, wed_check_inline
  beq $t2, 3, thu_check_inline
  beq $t2, 4, fri_check_inline
  beq $t2, 5, sat_check_inline
  j class_display_done
  
mon_check_inline:
  # Monday: check if in class times
  li $t4, 540
  li $t5, 615
  bge $t3, $t4, mon_check1
  j class_display_done
mon_check1:
  blt $t3, $t5, mon_class_show1
  li $t4, 720
  bge $t3, $t4, mon_check2
  j class_display_done
mon_check2:
  li $t5, 780
  blt $t3, $t5, mon_class_show2
  li $t4, 840
  bge $t3, $t4, mon_check3
  j class_display_done
mon_check3:
  li $t5, 915
  blt $t3, $t5, mon_class_show3
  j class_display_done
  
mon_class_show1:
  la $a0, mon_class1
  li $v0, 4
  syscall
  j class_display_done
mon_class_show2:
  la $a0, mon_class2
  li $v0, 4
  syscall
  j class_display_done
mon_class_show3:
  la $a0, mon_class3
  li $v0, 4
  syscall
  j class_display_done

tue_check_inline:
  li $t4, 660
  li $t5, 735
  bge $t3, $t4, tue_check1
  j class_display_done
tue_check1:
  blt $t3, $t5, tue_class_show1
  li $t4, 840
  bge $t3, $t4, tue_check2
  j class_display_done
tue_check2:
  li $t5, 915
  blt $t3, $t5, tue_class_show2
  li $t4, 960
  bge $t3, $t4, tue_check3
  j class_display_done
tue_check3:
  li $t5, 1020
  blt $t3, $t5, tue_class_show3
  j class_display_done
  
tue_class_show1:
  la $a0, tue_class1
  li $v0, 4
  syscall
  j class_display_done
tue_class_show2:
  la $a0, tue_class2
  li $v0, 4
  syscall
  j class_display_done
tue_class_show3:
  la $a0, tue_class3
  li $v0, 4
  syscall
  j class_display_done

wed_check_inline:
  li $t4, 540
  li $t5, 615
  bge $t3, $t4, wed_check1
  j class_display_done
wed_check1:
  blt $t3, $t5, wed_class_show1
  li $t4, 720
  bge $t3, $t4, wed_check2
  j class_display_done
wed_check2:
  li $t5, 780
  blt $t3, $t5, wed_class_show2
  li $t4, 840
  bge $t3, $t4, wed_check3
  j class_display_done
wed_check3:
  li $t5, 915
  blt $t3, $t5, wed_class_show3
  li $t4, 1020
  bge $t3, $t4, wed_check4
  j class_display_done
wed_check4:
  li $t5, 1050
  blt $t3, $t5, wed_class_show4
  j class_display_done
  
wed_class_show1:
  la $a0, wed_class1
  li $v0, 4
  syscall
  j class_display_done
wed_class_show2:
  la $a0, wed_class2
  li $v0, 4
  syscall
  j class_display_done
wed_class_show3:
  la $a0, wed_class3
  li $v0, 4
  syscall
  j class_display_done
wed_class_show4:
  la $a0, wed_class4
  li $v0, 4
  syscall
  j class_display_done

thu_check_inline:
  li $t4, 540
  li $t5, 660
  bge $t3, $t4, thu_check1
  j class_display_done
thu_check1:
  blt $t3, $t5, thu_class_show1
  li $t4, 660
  bge $t3, $t4, thu_check2
  j class_display_done
thu_check2:
  li $t5, 735
  blt $t3, $t5, thu_class_show2
  li $t4, 735
  bge $t3, $t4, thu_check3
  j class_display_done
thu_check3:
  li $t5, 840
  blt $t3, $t5, thu_class_show3
  li $t4, 840
  bge $t3, $t4, thu_check4
  j class_display_done
thu_check4:
  li $t5, 915
  blt $t3, $t5, thu_class_show4
  li $t4, 960
  bge $t3, $t4, thu_check5
  j class_display_done
thu_check5:
  li $t5, 1020
  blt $t3, $t5, thu_class_show5
  j class_display_done
  
thu_class_show1:
  la $a0, thu_class1
  li $v0, 4
  syscall
  j class_display_done
thu_class_show2:
  la $a0, thu_class2
  li $v0, 4
  syscall
  j class_display_done
thu_class_show3:
  la $a0, thu_class3
  li $v0, 4
  syscall
  j class_display_done
thu_class_show4:
  la $a0, thu_class3
  li $v0, 4
  syscall
  j class_display_done
thu_class_show5:
  la $a0, thu_class4
  li $v0, 4
  syscall
  j class_display_done

fri_check_inline:
  li $t4, 540
  li $t5, 660
  bge $t3, $t4, fri_check1
  j class_display_done
fri_check1:
  blt $t3, $t5, fri_class_show1
  li $t4, 660
  bge $t3, $t4, fri_check2
  j class_display_done
fri_check2:
  li $t5, 720
  blt $t3, $t5, fri_class_show2
  li $t4, 720
  bge $t3, $t4, fri_check3
  j class_display_done
fri_check3:
  li $t5, 780
  blt $t3, $t5, fri_class_show3
  li $t4, 780
  bge $t3, $t4, fri_check4
  j class_display_done
fri_check4:
  li $t5, 840
  blt $t3, $t5, fri_class_show4
  li $t4, 960
  bge $t3, $t4, fri_check5
  j class_display_done
fri_check5:
  li $t5, 1020
  blt $t3, $t5, fri_class_show5
  j class_display_done
  
fri_class_show1:
  la $a0, fri_class1
  li $v0, 4
  syscall
  j class_display_done
fri_class_show2:
  la $a0, fri_class2
  li $v0, 4
  syscall
  j class_display_done
fri_class_show3:
  la $a0, fri_class3
  li $v0, 4
  syscall
  j class_display_done
fri_class_show4:
  la $a0, fri_class4
  li $v0, 4
  syscall
  j class_display_done
fri_class_show5:
  la $a0, fri_class4
  li $v0, 4
  syscall
  j class_display_done

sat_check_inline:
  li $t4, 660
  li $t5, 720
  bge $t3, $t4, sat_check1
  j class_display_done
sat_check1:
  blt $t3, $t5, sat_class_show1
  li $t4, 840
  bge $t3, $t4, sat_check2
  j class_display_done
sat_check2:
  li $t5, 1020
  blt $t3, $t5, sat_class_show2
  j class_display_done
  
sat_class_show1:
  la $a0, sat_class1
  li $v0, 4
  syscall
  j class_display_done
sat_class_show2:
  la $a0, sat_class2
  li $v0, 4
  syscall

class_display_done:
  # Display newline after class
  la $a0, newline
  li $v0, 4
  syscall
  jr $ra
  
# Note: Class display now inline

# ========================================
# RECOMMEND ACTIVITY based on personality + free time
# Input: $a0 = personality (0-3)
#        $a1 = free time in minutes
# ========================================
recommend_activity:
  move $t0, $a0       # personality
  move $t1, $a1       # free time
  
  # Check personality type and free time duration
  beq $t0, 0, hardworking_rec
  beq $t0, 1, athletic_rec
  beq $t0, 2, balanced_rec
  beq $t0, 3, social_rec
  jr $ra

hardworking_rec:
  li $t2, 120         # 2 hours in minutes
  bge $t1, $t2, hard_2h
  li $t2, 60          # 1 hour
  bge $t1, $t2, hard_1h
  la $a0, activity_hardworking_30m
  li $v0, 4
  syscall
  jr $ra

hard_2h:
  la $a0, activity_hardworking_2h
  li $v0, 4
  syscall
  jr $ra

hard_1h:
  la $a0, activity_hardworking_1h
  li $v0, 4
  syscall
  jr $ra

athletic_rec:
  li $t2, 120         # 2 hours
  bge $t1, $t2, ath_2h
  li $t2, 60          # 1 hour
  bge $t1, $t2, ath_1h
  la $a0, activity_athletic_30m
  li $v0, 4
  syscall
  jr $ra

ath_2h:
  la $a0, activity_athletic_2h
  li $v0, 4
  syscall
  jr $ra

ath_1h:
  la $a0, activity_athletic_1h
  li $v0, 4
  syscall
  jr $ra

balanced_rec:
  li $t2, 120         # 2 hours
  bge $t1, $t2, bal_2h
  li $t2, 60          # 1 hour
  bge $t1, $t2, bal_1h
  la $a0, activity_balanced_30m
  li $v0, 4
  syscall
  jr $ra

bal_2h:
  la $a0, activity_balanced_2h
  li $v0, 4
  syscall
  jr $ra

bal_1h:
  la $a0, activity_balanced_1h
  li $v0, 4
  syscall
  jr $ra

social_rec:
  li $t2, 120         # 2 hours
  bge $t1, $t2, soc_2h
  li $t2, 60          # 1 hour
  bge $t1, $t2, soc_1h
  la $a0, activity_social_30m
  li $v0, 4
  syscall
  jr $ra

soc_2h:
  la $a0, activity_social_2h
  li $v0, 4
  syscall
  jr $ra

soc_1h:
  la $a0, activity_social_1h
  li $v0, 4
  syscall
  jr $ra

# ========================================
# DISPLAY FREE TIME SLOTS FOR THE DAY
# Input: $a0 = day (0-5)
# ========================================
display_free_slots:
  move $t0, $a0       # day index
  move $t1, $a1       # personality
  
  # Show breakfast for all days
  la $a0, breakfast_header
  li $v0, 4
  syscall
  
  beq $t1, 0, show_hard_breakfast
  beq $t1, 1, show_ath_breakfast
  beq $t1, 2, show_bal_breakfast
  beq $t1, 3, show_social_breakfast
  b show_breakfast_done

show_hard_breakfast:
  la $a0, hard_breakfast
  li $v0, 4
  syscall
  b show_breakfast_done
show_ath_breakfast:
  la $a0, ath_breakfast
  li $v0, 4
  syscall
  b show_breakfast_done
show_bal_breakfast:
  la $a0, bal_breakfast
  li $v0, 4
  syscall
  b show_breakfast_done
show_social_breakfast:
  la $a0, social_breakfast
  li $v0, 4
  syscall

show_breakfast_done:
  la $a0, free_slots_header
  li $v0, 4
  syscall
  
  beq $t0, 0, show_mon_slots
  beq $t0, 1, show_tue_slots
  beq $t0, 2, show_wed_slots
  beq $t0, 3, show_thu_slots
  beq $t0, 4, show_fri_slots
  beq $t0, 5, show_sat_slots
  jr $ra

show_mon_slots:
  la $a0, free_slot_item
  li $v0, 4
  syscall
  la $a0, mon_free_slot1
  li $v0, 4
  syscall
  la $a0, free_slot_item
  li $v0, 4
  syscall
  la $a0, mon_free_slot2
  li $v0, 4
  syscall
  la $a0, evening_9pm_header
  li $v0, 4
  syscall
  la $a0, meeting_slot
  li $v0, 4
  syscall
  beq $t1, 0, select_hard_evening
  beq $t1, 1, select_ath_evening
  beq $t1, 2, select_bal_evening
  beq $t1, 3, select_social_evening
  jr $ra

show_tue_slots:
  la $a0, free_slot_item
  li $v0, 4
  syscall
  la $a0, tue_free_slot1
  li $v0, 4
  syscall
  la $a0, free_slot_item
  li $v0, 4
  syscall
  la $a0, tue_free_slot2
  li $v0, 4
  syscall
  la $a0, evening_9pm_header
  li $v0, 4
  syscall
  la $a0, meeting_slot
  li $v0, 4
  syscall
  beq $t1, 0, select_hard_evening
  beq $t1, 1, select_ath_evening
  beq $t1, 2, select_bal_evening
  beq $t1, 3, select_social_evening
  jr $ra

show_wed_slots:
  la $a0, free_slot_item
  li $v0, 4
  syscall
  la $a0, wed_free_slot1
  li $v0, 4
  syscall
  la $a0, free_slot_item
  li $v0, 4
  syscall
  la $a0, wed_free_slot2
  li $v0, 4
  syscall
  la $a0, evening_9pm_header
  li $v0, 4
  syscall
  la $a0, meeting_slot
  li $v0, 4
  syscall
  beq $t1, 0, select_hard_evening
  beq $t1, 1, select_ath_evening
  beq $t1, 2, select_bal_evening
  beq $t1, 3, select_social_evening
  jr $ra

show_thu_slots:
  la $a0, free_slot_item
  li $v0, 4
  syscall
  la $a0, thu_free_slot1
  li $v0, 4
  syscall
  la $a0, evening_9pm_header
  li $v0, 4
  syscall
  la $a0, meeting_slot
  li $v0, 4
  syscall
  beq $t1, 0, select_hard_evening
  beq $t1, 1, select_ath_evening
  beq $t1, 2, select_bal_evening
  beq $t1, 3, select_social_evening
  jr $ra

show_fri_slots:
  la $a0, free_slot_item
  li $v0, 4
  syscall
  la $a0, fri_free_slot1
  li $v0, 4
  syscall
  la $a0, evening_9pm_header
  li $v0, 4
  syscall
  la $a0, meeting_slot
  li $v0, 4
  syscall
  beq $t1, 0, select_hard_evening
  beq $t1, 1, select_ath_evening
  beq $t1, 2, select_bal_evening
  beq $t1, 3, select_social_evening
  jr $ra

show_sat_slots:
  la $a0, free_slot_item
  li $v0, 4
  syscall
  la $a0, sat_free_slot1
  li $v0, 4
  syscall
  la $a0, free_slot_item
  li $v0, 4
  syscall
  la $a0, sat_free_slot2
  li $v0, 4
  syscall
  la $a0, free_slot_item
  li $v0, 4
  syscall
  la $a0, sat_free_slot3
  li $v0, 4
  syscall
  la $a0, evening_9pm_header
  li $v0, 4
  syscall
  la $a0, meeting_slot
  li $v0, 4
  syscall
  beq $t1, 0, select_hard_evening
  beq $t1, 1, select_ath_evening
  beq $t1, 2, select_bal_evening
  beq $t1, 3, select_social_evening
  jr $ra

# Activity selection based on day (to vary activities)
select_hard_evening:
  # Use day mod 3 to pick activity
  rem $t2, $t0, 3
  beq $t2, 0, show_hard_1
  beq $t2, 1, show_hard_2
  b show_hard_3
show_hard_1:
  la $a0, hard_evening_1
  li $v0, 4
  syscall
  jr $ra
show_hard_2:
  la $a0, hard_evening_2
  li $v0, 4
  syscall
  jr $ra
show_hard_3:
  la $a0, hard_evening_3
  li $v0, 4
  syscall
  jr $ra

select_ath_evening:
  rem $t2, $t0, 3
  beq $t2, 0, show_ath_1
  beq $t2, 1, show_ath_2
  b show_ath_3
show_ath_1:
  la $a0, ath_evening_1
  li $v0, 4
  syscall
  jr $ra
show_ath_2:
  la $a0, ath_evening_2
  li $v0, 4
  syscall
  jr $ra
show_ath_3:
  la $a0, ath_evening_3
  li $v0, 4
  syscall
  jr $ra

select_bal_evening:
  rem $t2, $t0, 3
  beq $t2, 0, show_bal_1
  beq $t2, 1, show_bal_2
  b show_bal_3
show_bal_1:
  la $a0, bal_evening_1
  li $v0, 4
  syscall
  jr $ra
show_bal_2:
  la $a0, bal_evening_2
  li $v0, 4
  syscall
  jr $ra
show_bal_3:
  la $a0, bal_evening_3
  li $v0, 4
  syscall
  jr $ra

select_social_evening:
  rem $t2, $t0, 3
  beq $t2, 0, show_social_1
  beq $t2, 1, show_social_2
  b show_social_3
show_social_1:
  la $a0, social_evening_1
  li $v0, 4
  syscall
  jr $ra
show_social_2:
  la $a0, social_evening_2
  li $v0, 4
  syscall
  jr $ra
show_social_3:
  la $a0, social_evening_3
  li $v0, 4
  syscall
  jr $ra

# ========================================
# DISPLAY PERSONALITY PROFILE
# Input: $a0 = personality (0-3)
# ========================================
display_personality_profile:
  move $t0, $a0
  beq $t0, 0, show_pers_1
  beq $t0, 1, show_pers_2
  beq $t0, 2, show_pers_3
  beq $t0, 3, show_pers_4
  jr $ra

show_pers_1:
  la $a0, personality_1
  li $v0, 4
  syscall
  la $a0, personality_desc_1
  li $v0, 4
  syscall
  la $a0, activity_hardwork_study
  li $v0, 4
  syscall
  la $a0, activity_hardwork_focus
  li $v0, 4
  syscall
  la $a0, activity_hardwork_time
  li $v0, 4
  syscall
  la $a0, activity_hardwork_break
  li $v0, 4
  syscall
  jr $ra

show_pers_2:
  la $a0, personality_2
  li $v0, 4
  syscall
  la $a0, personality_desc_2
  li $v0, 4
  syscall
  la $a0, activity_athletic_sports
  li $v0, 4
  syscall
  la $a0, activity_athletic_balance
  li $v0, 4
  syscall
  la $a0, activity_athletic_time
  li $v0, 4
  syscall
  la $a0, activity_athletic_subject
  li $v0, 4
  syscall
  jr $ra

show_pers_3:
  la $a0, personality_3
  li $v0, 4
  syscall
  la $a0, personality_desc_3
  li $v0, 4
  syscall
  la $a0, activity_balanced_mix
  li $v0, 4
  syscall
  la $a0, activity_balanced_flex
  li $v0, 4
  syscall
  la $a0, activity_balanced_time
  li $v0, 4
  syscall
  la $a0, activity_balanced_social
  li $v0, 4
  syscall
  jr $ra

show_pers_4:
  la $a0, personality_4
  li $v0, 4
  syscall
  la $a0, personality_desc_4
  li $v0, 4
  syscall
  la $a0, activity_social_group
  li $v0, 4
  syscall
  la $a0, activity_social_clubs
  li $v0, 4
  syscall
  la $a0, activity_social_time
  li $v0, 4
  syscall
  la $a0, activity_social_subject
  li $v0, 4
  syscall
  jr $ra

# ========================================
# DISPLAY SMART SUGGESTIONS
# Input: $a0 = personality (0-3)
#        $a1 = free time duration in minutes
# ========================================
display_smart_suggestions:
  move $t0, $a0        # personality
  move $t1, $a1        # free time duration
  
  # Check if in free time
  beq $t1, 0, smart_no_free_time
  
  # Determine time category: 30min, 1h, 2h+
  li $t2, 60           # 1 hour threshold
  li $t3, 120          # 2 hour threshold
  
  bge $t1, $t3, smart_2h_plus
  bge $t1, $t2, smart_1h
  # Less than 1h (30 mins)
  b smart_30m
  
smart_30m:
  beq $t0, 0, display_activity_hard_30m
  beq $t0, 1, display_activity_ath_30m
  beq $t0, 2, display_activity_bal_30m
  beq $t0, 3, display_activity_social_30m
  jr $ra
  
smart_1h:
  beq $t0, 0, display_activity_hard_1h
  beq $t0, 1, display_activity_ath_1h
  beq $t0, 2, display_activity_bal_1h
  beq $t0, 3, display_activity_social_1h
  jr $ra
  
smart_2h_plus:
  beq $t0, 0, display_activity_hard_2h
  beq $t0, 1, display_activity_ath_2h
  beq $t0, 2, display_activity_bal_2h
  beq $t0, 3, display_activity_social_2h
  jr $ra

display_activity_hard_30m:
  la $a0, activity_hardworking_30m
  li $v0, 4
  syscall
  jr $ra
display_activity_hard_1h:
  la $a0, activity_hardworking_1h
  li $v0, 4
  syscall
  jr $ra
display_activity_hard_2h:
  la $a0, activity_hardworking_2h
  li $v0, 4
  syscall
  jr $ra

display_activity_ath_30m:
  la $a0, activity_athletic_30m
  li $v0, 4
  syscall
  jr $ra
display_activity_ath_1h:
  la $a0, activity_athletic_1h
  li $v0, 4
  syscall
  jr $ra
display_activity_ath_2h:
  la $a0, activity_athletic_2h
  li $v0, 4
  syscall
  jr $ra

display_activity_bal_30m:
  la $a0, activity_balanced_30m
  li $v0, 4
  syscall
  jr $ra
display_activity_bal_1h:
  la $a0, activity_balanced_1h
  li $v0, 4
  syscall
  jr $ra
display_activity_bal_2h:
  la $a0, activity_balanced_2h
  li $v0, 4
  syscall
  jr $ra

display_activity_social_30m:
  la $a0, activity_social_30m
  li $v0, 4
  syscall
  jr $ra
display_activity_social_1h:
  la $a0, activity_social_1h
  li $v0, 4
  syscall
  jr $ra
display_activity_social_2h:
  la $a0, activity_social_2h
  li $v0, 4
  syscall
  jr $ra

smart_no_free_time:
  la $a0, newline
  li $v0, 4
  syscall
  jr $ra

# ========================================
# DISPLAY ACADEMIC INFO (CGPA, Attendance)
# ========================================
display_academic_info:
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
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, sem5_label
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
  li.s $f12, 9.5
  
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
  
  jr $ra

# ========================================
# DISPLAY FREE TIME ACTIVITIES
# ========================================
display_free_time_activities:
  la $a0, subject_diff_header
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  la $a0, snacks_time
  li $v0, 4
  syscall
  
  la $a0, sports_time_ev
  li $v0, 4
  syscall
  
  la $a0, dinner_time_ev
  li $v0, 4
  syscall
  
  la $a0, free_after_dinner
  li $v0, 4
  syscall
  
  la $a0, newline
  li $v0, 4
  syscall
  
  jr $ra

# ========================================
# MAIN PROGRAM
# ========================================
main:
  # Print header
  la $a0, header
  li $v0, 4
  syscall
  
  # ===== INPUT 1: STUDENT ID =====
  la $a0, id_prompt
  li $v0, 4
  syscall
  
  la $a0, input_buffer
  li $a1, 10
  li $v0, 8
  syscall
  
  # Convert 3-digit input to integer
  la $t0, input_buffer
  lb $t1, 0($t0)
  lb $t2, 1($t0)
  lb $t3, 2($t0)
  
  sub $t1, $t1, 48
  sub $t2, $t2, 48
  sub $t3, $t3, 48
  
  mul $s0, $t1, 100
  mul $t4, $t2, 10
  add $s0, $s0, $t4
  add $s0, $s0, $t3    # $s0 = 3-digit ID
  
  # Calculate personality: ID % 4
  li $t0, 4
  div $s0, $t0
  mfhi $s1             # $s1 = personality (0-3)
  
  # ===== INPUT 2: DAY =====
  la $a0, day_prompt
  li $v0, 4
  syscall
  
  la $a0, day_input_buffer
  li $a1, 10
  li $v0, 8
  syscall
  
  # Read day (single digit 0-5)
  la $t0, day_input_buffer
  lb $s2, 0($t0)       # $s2 = day
  sub $s2, $s2, 48
  
  # ===== INPUT 3: TIME =====
  la $a0, time_prompt
  li $v0, 4
  syscall
  
  la $a0, time_input_buffer
  li $a1, 10
  li $v0, 8
  syscall
  
  # Convert HHMM (24-hour format) to minutes
  la $t0, time_input_buffer
  lb $t1, 0($t0)
  lb $t2, 1($t0)
  lb $t3, 2($t0)
  lb $t4, 3($t0)
  
  sub $t1, $t1, 48
  sub $t2, $t2, 48
  sub $t3, $t3, 48
  sub $t4, $t4, 48
  
  # Calculate hours: HH[0]*10 + HH[1]
  mul $t5, $t1, 10
  add $t5, $t5, $t2    # $t5 = hours (0-23)
  
  # Calculate minutes: MM[0]*10 + MM[1]
  mul $t6, $t3, 10
  add $t6, $t6, $t4    # $t6 = minutes (0-59)
  
  # Convert to total minutes: hours*60 + minutes
  mul $t7, $t5, 60
  add $t7, $t7, $t6    # $t7 = total minutes from midnight
  
  # Store hours for later AM/PM display
  move $s5, $t5        # $s5 = hours (for AM/PM display)
  
  # $t7 = current time in minutes from midnight
  # Calculate next free slot based on day and time
  move $a0, $s2        # day index
  move $a1, $t7        # current time in minutes
  jal calculate_next_free_slot
  # Returns: $v0 = free time duration in minutes
  move $s3, $v0        # $s3 = calculated free time in minutes
  
  # ===== DISPLAY HEADER INFO =====
  la $a0, divider
  li $v0, 4
  syscall
  
  la $a0, student_line
  li $v0, 4
  syscall
  
  # Display student ID
  la $a0, student_id_prefix
  li $v0, 4
  syscall
  
  la $t0, input_buffer
  lb $a0, 0($t0)
  li $v0, 11
  syscall
  lb $a0, 1($t0)
  li $v0, 11
  syscall
  lb $a0, 2($t0)
  li $v0, 11
  syscall
  
  la $a0, pipe
  li $v0, 4
  syscall
  
  # Display day
  move $a0, $s2
  jal display_day_name
  
  la $a0, pipe
  li $v0, 4
  syscall
  
  # Display time (convert from 24-hour to 12-hour format)
  move $a0, $s5        # $s5 has hours in 24-hour format
  
  # Convert to 12-hour format
  li $t1, 12
  blt $a0, $t1, convert_am
  
  # PM hours: subtract 12 (except 12 PM stays 12)
  beq $a0, 12, is_12pm
  sub $a0, $a0, 12
  j display_hour_pm
  
is_12pm:
  li $a0, 12
  j display_hour_pm
  
convert_am:
  # AM hours: 0 becomes 12 (midnight)
  beq $a0, 0, is_midnight
  j display_hour_am
  
is_midnight:
  li $a0, 12
  j display_hour_am
  
display_hour_am:
  # Display hour
  li $v0, 1
  syscall
  la $a0, time_sep
  li $v0, 4
  syscall
  
  # Display minutes
  la $a0, time_input_buffer
  lb $t1, 2($a0)
  lb $t2, 3($a0)
  li $v0, 11
  move $a0, $t1
  syscall
  move $a0, $t2
  syscall
  
  # Display AM
  li $a0, 32           # Space
  li $v0, 11
  syscall
  li $a0, 65           # 'A'
  li $v0, 11
  syscall
  li $a0, 77           # 'M'
  li $v0, 11
  syscall
  j time_done_display
  
display_hour_pm:
  # Display hour
  li $v0, 1
  syscall
  la $a0, time_sep
  li $v0, 4
  syscall
  
  # Display minutes
  la $a0, time_input_buffer
  lb $t1, 2($a0)
  lb $t2, 3($a0)
  li $v0, 11
  move $a0, $t1
  syscall
  move $a0, $t2
  syscall
  
  # Display PM
  li $a0, 32           # Space
  li $v0, 11
  syscall
  li $a0, 80           # 'P'
  li $v0, 11
  syscall
  li $a0, 77           # 'M'
  li $v0, 11
  syscall

time_done_display:
  
  la $a0, newline
  li $v0, 4
  syscall
  
  # ===== DISPLAY PERSONALITY PROFILE =====
  la $a0, personality_header
  li $v0, 4
  syscall
  
  la $a0, personality_calc
  li $v0, 4
  syscall
  move $a0, $s1
  li $v0, 1
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  move $a0, $s1
  jal display_personality_profile
  
  # ===== DISPLAY SCHEDULE =====
  la $a0, schedule_header
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  move $a0, $s2
  jal display_schedule
  
  # ===== DISPLAY EVENING SCHEDULE =====
  la $a0, evening_header
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, sports_time
  li $v0, 4
  syscall
  la $a0, dinner_time
  li $v0, 4
  syscall
  la $a0, geek_room
  li $v0, 4
  syscall
  la $a0, free_evening
  li $v0, 4
  syscall
  la $a0, sleep_time
  li $v0, 4
  syscall
  
  # ===== DISPLAY SMART SUGGESTIONS & FREE SLOTS =====
  la $a0, smart_suggestions_header
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  # Display free slots
  move $a0, $s2        # day
  move $a1, $s1        # personality
  jal display_free_slots
  
  la $a0, newline
  li $v0, 4
  syscall
  
  # Display personalized activity recommendations
  move $a0, $s1        # personality
  move $a1, $s3        # free time duration
  jal display_smart_suggestions
  
  # ===== DISPLAY ACADEMIC INFO =====
  la $a0, divider
  li $v0, 4
  syscall
  
  jal display_academic_info
  
  la $a0, divider
  li $v0, 4
  syscall
  
  # Exit
  li $v0, 10
  syscall

