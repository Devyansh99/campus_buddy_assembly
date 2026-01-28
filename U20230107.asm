.data

# ============================================
# STUDENT DATA (HARDCODED BASE DATA)
# ============================================
student_prefix:    .asciiz "U2023"
input_buffer:      .space 10
time_buffer:       .space 10
current_cgpa_val:  .float 8.18
target_cgpa_val:   .float 8.3
completed_credits: .word 78
sem_credits:       .word 24
total_credits_req: .word 160

# ============================================
# OUTPUT STRINGS - HEADER
# ============================================
header:            .asciiz "=== CAMPUS BUDDY ===\n"
input_prompt:      .asciiz "Enter the last 3 digits of your Student ID: "
time_input_prompt: .asciiz "Enter current time (HHMM format, e.g., 1200): "
newline:           .asciiz "\n"
divider:           .asciiz "========================================\n"

# ============================================
# OUTPUT STRINGS - STUDENT INFO
# ============================================
student_line:      .asciiz "Student: "
pipe:              .asciiz " | Current Day: "
current_time_msg:  .asciiz "Current Time: "

# ============================================
# OUTPUT STRINGS - PERSONALIZATION
# ============================================
person_header:     .asciiz "\n=== PERSONALIZATION PROFILE ===\n"
focus_day_str:     .asciiz "Focus Day (Priority): "
personality_str:   .asciiz "Campus Personality: "
learning_style_str: .asciiz "Learning Style: "

# Personality types
personality_type0: .asciiz "Library Scholar (Books & Study Focused)\n"
personality_type1: .asciiz "Sports Enthusiast (Active & Physical)\n"
personality_type2: .asciiz "Wellness Advocate (Balanced Lifestyle)\n"
personality_type3: .asciiz "Social Butterfly (Group & Community)\n"

# Learning styles
learning_style0:   .asciiz "Theoretical (Concepts & Principles)\n"
learning_style1:   .asciiz "Practical (Hands-on & Experiments)\n"
learning_style2:   .asciiz "Visual (Diagrams & Visualizations)\n"
learning_style3:   .asciiz "Kinesthetic (Interactive & Movement)\n"
learning_style4:   .asciiz "Auditory (Listening & Discussion)\n"

# Days of week
monday:            .asciiz "Monday"
tuesday:           .asciiz "Tuesday"
wednesday:         .asciiz "Wednesday"
thursday:          .asciiz "Thursday"
friday:            .asciiz "Friday"
saturday:          .asciiz "Saturday"

# ============================================
# DAILY ROUTINE / ACTIVITIES
# ============================================
routine_header:    .asciiz "\n=== EVENING SCHEDULE ===\n"
basketball_time:   .asciiz "6:00-7:00 PM - Basketball Practice"
basketball_loc:    .asciiz " [Sports Complex]"
dinnertime:        .asciiz "8:00-9:00 PM - Dinner"
dinnertime_loc:    .asciiz " [Dining Hall]"
sleep_pref:        .asciiz "Preferred Sleep Time: 11:30 PM"

# Free time calculation
free_time_header:  .asciiz "\n=== FREE TIME SLOTS (Based on current time) ===\n"
current_mins_msg:  .asciiz "Current time (minutes from midnight): "
minutes_msg:       .asciiz " min\n"
morning_free:      .asciiz "Morning slot available: 9:00-11:00 AM\n"
afternoon_free:    .asciiz "Afternoon slot available: 2:00-4:00 PM\n"
evening_free:      .asciiz "Evening slot available: 5:00-6:00 PM (before basketball)\n"
am_str:            .asciiz " AM"
pm_str:            .asciiz " PM"

# Day names array
day_names:
  .word monday, tuesday, wednesday, thursday, friday, saturday

# ============================================
# SCHEDULE DATA FOR EACH DAY
# ============================================
# MONDAY
monday_class1:     .asciiz "9:00-10:15 Deep Learning - 2201\n"
monday_class2:     .asciiz "12:00-1:00 Theory of Computation - 2202\n"
monday_lunch:      .asciiz "1:00-2:00 LUNCH BREAK\n"
monday_class3:     .asciiz "2:00-3:15 Fundamentals of CS - 2201\n"
monday_free1:      .asciiz "3:15-5:00 [FREE SLOT - 1h 45min]\n"

# TUESDAY
tuesday_free1:     .asciiz "9:00-11:00 [FREE SLOT - 2h]\n"
tuesday_class1:    .asciiz "11:00-12:15 Electromagnetics - 2203\n"
tuesday_lunch:     .asciiz "12:15-2:00 LUNCH BREAK\n"
tuesday_class2:    .asciiz "2:00-3:15 Search Methods in AI - 1001 B\n"
tuesday_free2:     .asciiz "3:15-4:00 [FREE SLOT - 45min]\n"
tuesday_class3:    .asciiz "4:00-5:00 Narrative Twists - 2201\n"

# WEDNESDAY
wednesday_class1:  .asciiz "9:00-10:15 Deep Learning - 2201\n"
wednesday_free1:   .asciiz "10:15-12:00 [FREE SLOT - 1h 45min]\n"
wednesday_class2:  .asciiz "12:00-1:00 Theory of Computation - 2202\n"
wednesday_lunch:   .asciiz "1:00-2:00 LUNCH BREAK\n"
wednesday_class3:  .asciiz "2:00-3:15 Fundamentals of CS - 2201\n"
wednesday_free2:   .asciiz "3:15-5:00 [FREE SLOT - 1h 45min]\n"
wednesday_class4:  .asciiz "5:00-5:30 ILGC Meeting with Mentor - 2201\n"

# THURSDAY
thursday_class1:   .asciiz "9:00-11:00 Fundamentals of CS Lab - 2201\n"
thursday_class2:   .asciiz "11:00-12:15 Electromagnetics - 2203\n"
thursday_lunch:    .asciiz "12:15-2:00 LUNCH BREAK\n"
thursday_class3:   .asciiz "2:00-3:15 Search Methods in AI - 1001 B\n"
thursday_free1:    .asciiz "3:15-4:00 [FREE SLOT - 45min]\n"
thursday_class4:   .asciiz "4:00-5:00 Narrative Twists - 2201\n"

# FRIDAY
friday_class1:     .asciiz "9:00-11:00 Deep Learning Lab - 2201\n"
friday_class2:     .asciiz "11:00-12:00 Search Methods in AI Tutorial - 1001 B\n"
friday_class3:     .asciiz "12:00-1:00 Theory of Computation - 2202\n"
friday_lunch:      .asciiz "1:00-2:00 LUNCH BREAK\n"
friday_free1:      .asciiz "2:00-4:00 [FREE SLOT - 2h]\n"
friday_class4:     .asciiz "4:00-5:00 Theory of Computation Tutorial - 2202\n"

# SATURDAY
saturday_free1:    .asciiz "9:00-11:00 [FREE SLOT - 2h]\n"
saturday_class1:   .asciiz "11:00-12:00 Electromagnetics Tutorial - 2203\n"
saturday_free2:    .asciiz "12:00-2:00 [FREE SLOT - 2h]\n"
saturday_class2:   .asciiz "2:00-5:00 ILGC - 2201\n"
saturday_free3:    .asciiz "5:00-9:00 [FREE SLOT - 4h]\n"

# Schedule header
schedule_header:   .asciiz "\n========== TODAY'S SCHEDULE =========="

.text
.globl main

# ========================================
# Calculate and display free time slots
# Input: $a0 = day index, $a1 = current time in minutes
# ========================================
calculate_free_time:
  move $t1, $a1      # $t1 = current time in minutes
  
  # Check if current time is strictly before 9 AM (540 mins) OR after 11 AM (660 mins)
  # Morning free (9-11 AM) - show only if we haven't started it yet
  li $t2, 540        # 9 AM
  blt $t1, $t2, show_morning  # If before 9 AM, show morning
  
  li $t2, 660        # 11 AM
  bge $t1, $t2, check_afternoon  # If 11 AM or later, skip to afternoon check
  
  # If between 9 AM and 11 AM, don't show morning (it's in progress)
  j check_afternoon
  
show_morning:
  la $a0, morning_free
  li $v0, 4
  syscall

check_afternoon:
  # Afternoon free (2-4 PM) - show only if we haven't started it yet
  li $t2, 840        # 2 PM
  blt $t1, $t2, show_afternoon  # If before 2 PM, show afternoon
  
  li $t2, 960        # 4 PM
  bge $t1, $t2, check_evening  # If 4 PM or later, skip to evening check
  
  # If between 2 PM and 4 PM, don't show afternoon (it's in progress)
  j check_evening
  
show_afternoon:
  la $a0, afternoon_free
  li $v0, 4
  syscall

check_evening:
  # Evening free (5-6 PM) - show only if we haven't started it yet
  li $t2, 1020       # 5 PM
  blt $t1, $t2, show_evening  # If before 5 PM, show evening
  
  li $t2, 1080       # 6 PM
  bge $t1, $t2, skip_evening  # If 6 PM or later, skip
  
  # If between 5 PM and 6 PM, don't show evening (it's in progress)
  j skip_evening
  
show_evening:
  la $a0, evening_free
  li $v0, 4
  syscall

skip_evening:
  jr $ra

# ========================================
# Display schedule for a specific day
# Input: $a0 = day index (0-5)
# ========================================
display_day_schedule:
  move $t0, $a0                      # $t0 = day index
  
  beq $t0, 0, display_monday
  beq $t0, 1, display_tuesday
  beq $t0, 2, display_wednesday
  beq $t0, 3, display_thursday
  beq $t0, 4, display_friday
  beq $t0, 5, display_saturday
  jr $ra

display_monday:
  la $a0, monday_class1
  li $v0, 4
  syscall
  la $a0, monday_class2
  li $v0, 4
  syscall
  la $a0, monday_lunch
  li $v0, 4
  syscall
  la $a0, monday_class3
  li $v0, 4
  syscall
  la $a0, monday_free1
  li $v0, 4
  syscall
  jr $ra

display_tuesday:
  la $a0, tuesday_free1
  li $v0, 4
  syscall
  la $a0, tuesday_class1
  li $v0, 4
  syscall
  la $a0, tuesday_lunch
  li $v0, 4
  syscall
  la $a0, tuesday_class2
  li $v0, 4
  syscall
  la $a0, tuesday_free2
  li $v0, 4
  syscall
  la $a0, tuesday_class3
  li $v0, 4
  syscall
  jr $ra

display_wednesday:
  la $a0, wednesday_class1
  li $v0, 4
  syscall
  la $a0, wednesday_free1
  li $v0, 4
  syscall
  la $a0, wednesday_class2
  li $v0, 4
  syscall
  la $a0, wednesday_lunch
  li $v0, 4
  syscall
  la $a0, wednesday_class3
  li $v0, 4
  syscall
  la $a0, wednesday_free2
  li $v0, 4
  syscall
  la $a0, wednesday_class4
  li $v0, 4
  syscall
  jr $ra

display_thursday:
  la $a0, thursday_class1
  li $v0, 4
  syscall
  la $a0, thursday_class2
  li $v0, 4
  syscall
  la $a0, thursday_lunch
  li $v0, 4
  syscall
  la $a0, thursday_class3
  li $v0, 4
  syscall
  la $a0, thursday_free1
  li $v0, 4
  syscall
  la $a0, thursday_class4
  li $v0, 4
  syscall
  jr $ra

display_friday:
  la $a0, friday_class1
  li $v0, 4
  syscall
  la $a0, friday_class2
  li $v0, 4
  syscall
  la $a0, friday_class3
  li $v0, 4
  syscall
  la $a0, friday_lunch
  li $v0, 4
  syscall
  la $a0, friday_free1
  li $v0, 4
  syscall
  la $a0, friday_class4
  li $v0, 4
  syscall
  jr $ra

display_saturday:
  la $a0, saturday_free1
  li $v0, 4
  syscall
  la $a0, saturday_class1
  li $v0, 4
  syscall
  la $a0, saturday_free2
  li $v0, 4
  syscall
  la $a0, saturday_class2
  li $v0, 4
  syscall
  la $a0, saturday_free3
  li $v0, 4
  syscall
  jr $ra

main:
  # Print header
  la $a0, header
  li $v0, 4
  syscall

  # ===== INPUT 1: STUDENT ID (last 3 digits) =====
  la $a0, input_prompt
  li $v0, 4
  syscall
  
  # Read 3 digits
  la $a0, input_buffer
  li $a1, 10
  li $v0, 8
  syscall
  
  # Validate input is 3 digits
  la $t0, input_buffer
  lb $t1, 0($t0)
  lb $t2, 1($t0)
  lb $t3, 2($t0)
  
  # Convert ASCII to decimal for calculations
  sub $t1, $t1, 48
  sub $t2, $t2, 48
  sub $t3, $t3, 48
  
  # Check valid range (0-9)
  blt $t1, 0, invalid_input
  bgt $t1, 9, invalid_input
  blt $t2, 0, invalid_input
  bgt $t2, 9, invalid_input
  blt $t3, 0, invalid_input
  bgt $t3, 9, invalid_input
  
  # ===== INPUT 2: TIME (HHMM format) =====
  la $a0, time_input_prompt
  li $v0, 4
  syscall
  
  # Read 4 digits for time
  la $a0, time_buffer
  li $a1, 10
  li $v0, 8
  syscall
  
  # Validate time input
  la $t0, time_buffer
  lb $t4, 0($t0)
  lb $t5, 1($t0)
  lb $t6, 2($t0)
  lb $t7, 3($t0)
  
  sub $t4, $t4, 48
  sub $t5, $t5, 48
  sub $t6, $t6, 48
  sub $t7, $t7, 48
  
  blt $t4, 0, invalid_input
  bgt $t4, 9, invalid_input
  blt $t5, 0, invalid_input
  bgt $t5, 9, invalid_input
  blt $t6, 0, invalid_input
  bgt $t6, 9, invalid_input
  blt $t7, 0, invalid_input
  bgt $t7, 9, invalid_input
  
  # Calculate 3-digit ID value
  mul $s0, $t1, 100    # First digit * 100
  mul $t0, $t2, 10     # Second digit * 10
  add $s0, $s0, $t0
  add $s0, $s0, $t3    # Add third digit = 3-digit ID
  
  # Calculate day from ID: ID % 6
  li $t0, 6
  div $s0, $t0
  mfhi $s1             # $s1 = day index (0-5)
  
  # ===== DISPLAY STUDENT INFO =====
  la $a0, student_line
  li $v0, 4
  syscall
  
  # Display U2023
  la $a0, student_prefix
  li $v0, 4
  syscall
  
  # Display the 3 input digits (still in ASCII in input_buffer)
  la $t0, input_buffer
  lb $a0, 0($t0)
  li $v0, 11           # Print character
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
  
  # Display day name based on calculated day index
  la $t0, day_names
  sll $t1, $s1, 2      # Multiply day index by 4
  add $t1, $t0, $t1
  lw $a0, 0($t1)
  li $v0, 4
  syscall
  
  la $a0, newline
  li $v0, 4
  syscall
  
  # ===== DISPLAY CURRENT TIME =====
  la $a0, current_time_msg
  li $v0, 4
  syscall
  
  # Display time (HH:MM)
  la $t0, time_buffer
  lb $a0, 0($t0)     # Hour tens
  li $v0, 11
  syscall
  
  lb $a0, 1($t0)     # Hour units
  li $v0, 11
  syscall
  
  li $a0, 58         # ':'
  li $v0, 11
  syscall
  
  lb $a0, 2($t0)     # Minute tens
  li $v0, 11
  syscall
  
  lb $a0, 3($t0)     # Minute units
  li $v0, 11
  syscall
  
  # Determine and display AM/PM
  # Convert hour to decimal for comparison
  la $t0, time_buffer
  lb $t1, 0($t0)     # Hour tens digit
  lb $t2, 1($t0)     # Hour units digit
  sub $t1, $t1, 48
  sub $t2, $t2, 48
  mul $t1, $t1, 10   # Hour tens * 10
  add $t1, $t1, $t2  # $t1 now has hour value (0-23)
  
  # If hour < 12, show AM, else show PM
  li $t2, 12
  blt $t1, $t2, show_am
  
  la $a0, pm_str
  li $v0, 4
  syscall
  j time_done
  
show_am:
  la $a0, am_str
  li $v0, 4
  syscall
  
time_done:
  la $a0, newline
  li $v0, 4
  syscall
  
  # ===== DISPLAY PERSONALIZATION PROFILE =====
  la $a0, person_header
  li $v0, 4
  syscall
  
  # ALGORITHM 1: Focus Day = ID % 6
  la $a0, focus_day_str
  li $v0, 4
  syscall
  
  # Display day number
  move $a0, $s1        # $s1 already has day index
  li $v0, 1
  syscall
  
  la $a0, newline
  li $v0, 4
  syscall
  
  # ALGORITHM 2: Personality = (ID >> 2) % 4
  la $a0, personality_str
  li $v0, 4
  syscall
  
  # Use the full 3-digit ID value
  move $t0, $s0        # $s0 has the 3-digit ID value
  sra $t0, $t0, 2      # Right shift by 2
  li $t1, 4
  div $t0, $t1
  mfhi $t0             # $t0 = personality type (0-3)
  
  # Display personality type
  beq $t0, 0, show_personality_0
  beq $t0, 1, show_personality_1
  beq $t0, 2, show_personality_2
  beq $t0, 3, show_personality_3
  j skip_personality
  
show_personality_0:
  la $a0, personality_type0
  li $v0, 4
  syscall
  j skip_personality
  
show_personality_1:
  la $a0, personality_type1
  li $v0, 4
  syscall
  j skip_personality
  
show_personality_2:
  la $a0, personality_type2
  li $v0, 4
  syscall
  j skip_personality
  
show_personality_3:
  la $a0, personality_type3
  li $v0, 4
  syscall
  
skip_personality:
  
  # ALGORITHM 3: Learning Style = (ID % 5)
  la $a0, learning_style_str
  li $v0, 4
  syscall
  
  # Calculate learning style from ID
  move $t0, $s0        # $s0 has the 3-digit ID value
  li $t1, 5
  div $t0, $t1
  mfhi $t0             # $t0 = learning style type (0-4)
  
  # Display learning style
  beq $t0, 0, show_style_0
  beq $t0, 1, show_style_1
  beq $t0, 2, show_style_2
  beq $t0, 3, show_style_3
  beq $t0, 4, show_style_4
  j skip_style
  
show_style_0:
  la $a0, learning_style0
  li $v0, 4
  syscall
  j skip_style
  
show_style_1:
  la $a0, learning_style1
  li $v0, 4
  syscall
  j skip_style
  
show_style_2:
  la $a0, learning_style2
  li $v0, 4
  syscall
  j skip_style
  
show_style_3:
  la $a0, learning_style3
  li $v0, 4
  syscall
  j skip_style
  
show_style_4:
  la $a0, learning_style4
  li $v0, 4
  syscall
  
skip_style:
  la $a0, newline
  li $v0, 4
  syscall
  
  # ===== DISPLAY TODAY'S SCHEDULE =====
  la $a0, schedule_header
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall
  
  # Call display_day_schedule with day index in $a0
  move $a0, $s1                      # $s1 has day index
  jal display_day_schedule
  
  # ===== DISPLAY FREE TIME SLOTS =====
  la $a0, divider
  li $v0, 4
  syscall
  
  la $a0, free_time_header
  li $v0, 4
  syscall
  
  # Extract current time (HHMM format)
  la $t0, time_buffer
  lb $t1, 0($t0)     # Hour tens digit (ASCII)
  lb $t2, 1($t0)     # Hour units digit (ASCII)
  lb $t3, 2($t0)     # Minute tens digit (ASCII)
  lb $t4, 3($t0)     # Minute units digit (ASCII)
  
  # Convert to decimal
  sub $t1, $t1, 48
  sub $t2, $t2, 48
  sub $t3, $t3, 48
  sub $t4, $t4, 48
  
  # Calculate total minutes from midnight
  mul $t5, $t1, 600  # Hour tens * 600
  mul $t6, $t2, 60   # Hour units * 60
  add $t5, $t5, $t6
  mul $t6, $t3, 10   # Minute tens * 10
  add $t5, $t5, $t6
  add $t5, $t5, $t4  # Add minute units
  
  # $t5 now has current time in minutes from midnight
  # Display it
  la $a0, current_mins_msg
  li $v0, 4
  syscall
  move $a0, $t5
  li $v0, 1
  syscall
  la $a0, minutes_msg
  li $v0, 4
  syscall
  
  # Calculate and show free time slots based on day
  move $a0, $s1      # Pass day index
  move $a1, $t5      # Pass current time in minutes
  jal calculate_free_time
  
  # ===== DISPLAY EVENING SCHEDULE =====
  la $a0, routine_header
  li $v0, 4
  syscall
  
  # Basketball Practice
  la $a0, basketball_time
  li $v0, 4
  syscall
  
  la $a0, basketball_loc
  li $v0, 4
  syscall
  
  la $a0, newline
  li $v0, 4
  syscall
  
  # Dinner
  la $a0, dinnertime
  li $v0, 4
  syscall
  
  la $a0, dinnertime_loc
  li $v0, 4
  syscall
  
  la $a0, newline
  li $v0, 4
  syscall
  
  # Sleep preference
  la $a0, sleep_pref
  li $v0, 4
  syscall
  
  la $a0, newline
  li $v0, 4
  syscall
  
  # Exit
  li $v0, 10
  syscall
  
invalid_input:
  la $a0, newline
  li $v0, 4
  syscall
  li $v0, 10
  syscall
