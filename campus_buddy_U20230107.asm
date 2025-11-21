.data
# ============================================
# PERSONAL PROFILE DATA (CUSTOMIZE AS NEEDED)
# ============================================
student_id:        .asciiz "U20230107"
current_cgpa_val:  .float 8.18
target_cgpa_val:   .float 8.5
completed_credits: .word 78
semester_credits:  .word 24
total_credits_req: .word 160
internship_credits:.word 16

# ============================================
# OUTPUT STRINGS - HEADER
# ============================================
header:            .asciiz "=== CAMPUS BUDDY ===\n"
student_line:      .asciiz "Student: "
pipe:              .asciiz " | "
newline:           .asciiz "\n"
divider:           .asciiz "=====================================\n"
colon_str:         .asciiz ":"
zero_str:          .asciiz "0"

# ============================================
# OUTPUT STRINGS - PERSONALIZATION SECTION
# ============================================
person_header:     .asciiz "\n--- PERSONALIZATION PROFILE ---\n"
focus_day_str:     .asciiz "Focus Day: "
focus_day_explain: .asciiz " (Saturday is priority)\n"

# ============================================
# OUTPUT STRINGS - SCHEDULE SECTION
# ============================================
today_schedule_header: .asciiz "\n========== TODAY'S SCHEDULE ==========\n"
next_class_header: .asciiz "\n========== TIME REMAINING UNTIL NEXT CLASS ==========\n"
time_remaining_msg: .asciiz "Time remaining: "
minutes_msg:       .asciiz " minutes\n"
no_class_msg:      .asciiz "No more classes today!\n"

# ============================================
# OUTPUT STRINGS - ACADEMIC OVERVIEW
# ============================================
academic_header:   .asciiz "\n========== ACADEMIC OVERVIEW ==========\n"
cgpa_label:        .asciiz "Current CGPA: "
credits_label:     .asciiz " | Credits: "
target_label:      .asciiz "\nTarget CGPA: "
required_label:    .asciiz " | Required this semester: "
slash:             .asciiz "/"

# ============================================
# OUTPUT STRINGS - ATTENDANCE SECTION
# ============================================
attendance_header: .asciiz "\n========== ATTENDANCE PLANNER ==========\n"
attend1:           .asciiz "[CS Lab]: 78/100 classes (78.0%) -> Need 2 of next 10 classes\n"
attend2:           .asciiz "[Algorithms]: 48/60 classes (80.0%) -> Good standing!\n"
attend3:           .asciiz "[Computer Arch]: 36/50 classes (72.0%) -> Need 4 of next 8 classes\n"
attend4:           .asciiz "[Signals]: 32/40 classes (80.0%) -> Good standing!\n"

# ============================================
# OUTPUT STRINGS - SUGGESTIONS SECTION
# ============================================
smart_suggestions_header: .asciiz "\n========== SMART SUGGESTIONS & ACTIVITY RECOMMENDATIONS ==========\n"
between_class_header: .asciiz "\n--- Between Classes (Free Slots Strategy) ---\n"
study_suggestion: .asciiz "GO TO: Library (Focus on HARDER subjects first)\n"
rest_suggestion: .asciiz "ALTERNATIVE: Quick rest in Hostel if fatigued\n"
cafeteria_note:   .asciiz "CAFE: Lounge 1 for quick snacks/coffee breaks\n"
geek_room_note:   .asciiz "\n[9:00-10:00 PM] GEEK ROOM CLUB MEETING (Monday - Saturday)\n"
robotics_note:    .asciiz "[9:00-10:00 PM] ROBOTICS LAB MEETING (Every Sunday)\n"

# Smart location recommendation logic
location_rec_header: .asciiz "\n========== SMART LOCATION RECOMMENDATIONS ==========\n"
hostel_2hrs:      .asciiz "[Free slot >= 2 hours] Go to HOSTEL - Rest & freshen up and study\n"
library_short:    .asciiz "[Free slot < 2 hours] Go to LIBRARY - Study & assignments\n"
canteen_lunch:    .asciiz "[12:00-2:00 PM Lunch Break] Go to MESS for LUNCH\n"
saturday_note:    .asciiz "[SATURDAY - Your priority day] Plan longer study/rest blocks\n"
evening_header:   .asciiz "\n========== EVENING ROUTINE ==========\n"
snacks_time:      .asciiz "5:30-6:00 PM: Snack break at Mess\n"
sports_time:      .asciiz "6:00-7:00 PM: Basketball Court (Sports time - your personality!)\n"
dinner_time:      .asciiz "7:30-9:00 PM: Dinner at Mess\n"
free_after_dinner: .asciiz "9:00-11:30 PM: Free time for assignments, clubs, friends, or rest\n"
sleep_time:       .asciiz "11:30 PM: Recommended sleep time\n"

# Subject difficulty display
subject_difficulty_header: .asciiz "\n--- SUBJECT DIFFICULTY RATINGS (1=Easy, 5=Hardest) ---\n"
difficulty_rating: .asciiz ": Difficulty Level "

# ============================================
# PERSONALIZATION DATA (CUSTOM LOGIC)
# ============================================
# Focus Day: ID % 6 = 107 % 6 = 5 (Saturday is priority day)
# Activity Preference: (ID & 0x7) % 3 = 7 % 3 = 1 (Sports & Social)
focus_day:         .word 5                  # 0=Mon, 1=Tue, 2=Wed, 3=Thu, 4=Fri, 5=Sat
activity_pref:     .word 1                  # 0=Library, 1=Sports, 2=Wellness

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
# HELPER FUNCTION: Format time from HHMM to string
# Input: $a0 = time in HHMM format (e.g., 900, 1215)
# Output: Prints formatted time (e.g., "9:00", "12:15")
# ============================================
format_time:
  # Save registers
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  
  # Extract hours: HHMM / 100 = HH
  li $t1, 100
  div $a0, $t1
  mflo $t2                          # $t2 = hours
  
  # Extract minutes: HHMM % 100 = MM
  mfhi $t3                          # $t3 = minutes
  
  # Print hour
  move $a0, $t2
  li $v0, 1
  syscall
  
  # Print colon
  la $a0, colon_str
  li $v0, 4
  syscall
  
  # Print minutes (with leading zero if < 10)
  li $a0, 10
  bge $t3, $a0, print_mins_normal
  
  # Print leading zero for minutes < 10
  la $a0, zero_str
  li $v0, 4
  syscall
  
print_mins_normal:
  move $a0, $t3
  li $v0, 1
  syscall
  
  # Restore and return
  lw $ra, 0($sp)
  addi $sp, $sp, 4
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
  # For Saturday, next class is at 11:00 (1100)
  # Assuming current time is 9:00 AM (900)
  # Time remaining = 11:00 - 9:00 = 2 hours = 120 minutes
  
  la $a0, next_class_header
  li $v0, 4
  syscall
  
  # Saturday: Next class at 11:00, assume current time 9:00
  li $a0, 120                        # 2 hours = 120 minutes
  
  la $a0, time_remaining_msg
  li $v0, 4
  syscall
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
  la $a0, canteen_lunch
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
  lw $a0, completed_credits
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

  la $a0, target_label
  li $v0, 4
  syscall
  l.s $f12, target_cgpa_val
  li $v0, 2              # Print float
  syscall
  la $a0, required_label
  li $v0, 4
  syscall

  # Compute required SGPA: (target * total - current * completed) / semester
  l.s $f0, current_cgpa_val       # f0 = current CGPA
  lw $t0, completed_credits       # t0 = completed credits
  mtc1 $t0, $f1                  # f1 = (float)completed
  cvt.s.w $f1, $f1
  mul.s $f0, $f0, $f1             # f0 = current * completed
  
  l.s $f2, target_cgpa_val        # f2 = target CGPA
  lw $t1, total_credits_req       # t1 = total credits
  mtc1 $t1, $f3                  # f3 = (float)total
  cvt.s.w $f3, $f3
  mul.s $f2, $f2, $f3             # f2 = target * total
  
  sub.s $f2, $f2, $f0             # f2 = (target*total - current*completed)
  lw $t2, semester_credits        # t2 = semester credits
  mtc1 $t2, $f4
  cvt.s.w $f4, $f4
  div.s $f12, $f2, $f4            # f12 = required SGPA
  li $v0, 2                       # Print float
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall

  # ========== ATTENDANCE PLANNER ==========
  la $a0, attendance_header
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
  la $a0, newline
  li $v0, 4
  syscall

  # ========== SMART SUGGESTIONS & ACTIVITY RECOMMENDATIONS ==========
  la $a0, smart_suggestions_header
  li $v0, 4
  syscall
  
  # Activity recommendations
  la $a0, geek_room_note
  li $v0, 4
  syscall
  la $a0, robotics_note
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
