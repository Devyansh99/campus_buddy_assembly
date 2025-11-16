.data
# ============================================
# PERSONAL PROFILE DATA (CUSTOMIZE AS NEEDED)
# ============================================
student_id:        .asciiz "U20230107"
current_day:       .asciiz "Monday"
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

# ============================================
# OUTPUT STRINGS - SCHEDULE SECTION
# ============================================
schedule_header:   .asciiz "\nTODAY'S SCHEDULE:\n"
schedule_col_header: .asciiz "[Time] [Activity/Class] [Location]\n"
schedule_format1:  .asciiz "[08:30-10:00] [Mathematical Foundations] [Lecture Hall A]\n"
schedule_format2:  .asciiz "[10:15-11:45] [Physics Lab] [Lab Block 2]\n"
schedule_format3:  .asciiz "[12:30-13:30] [Lunch Break] [Courtyard]\n"
schedule_format4:  .asciiz "[14:00-15:30] [Data Structures] [Lecture Hall B]\n"
free_slots:        .asciiz "[Free slots with suggestions]\n"
free_slot_detail:  .asciiz "[15:30-17:00] [Meditation/Wellness] [Yoga Room]\n"

# ============================================
# OUTPUT STRINGS - ACADEMIC OVERVIEW
# ============================================
academic_header:   .asciiz "\nACADEMIC OVERVIEW:\n"
cgpa_label:        .asciiz "Current CGPA: "
credits_label:     .asciiz " | Credits: "
target_label:      .asciiz "\nTarget CGPA: "
required_label:    .asciiz " | Required this semester: "
slash:             .asciiz "/"

# ============================================
# OUTPUT STRINGS - ATTENDANCE SECTION
# ============================================
attendance_header: .asciiz "\nATTENDANCE PLANNER:\n"
attend1:           .asciiz "[CS Lab]: 78/100 classes (78.0%) -> Need 2 of next 10 classes\n"
attend2:           .asciiz "[Algorithms]: 48/60 classes (80.0%) -> Good standing!\n"
attend3:           .asciiz "[Computer Arch]: 36/50 classes (72.0%) -> Need 4 of next 8 classes\n"
attend4:           .asciiz "[Signals]: 32/40 classes (80.0%) -> Good standing!\n"

# ============================================
# OUTPUT STRINGS - SUGGESTIONS SECTION
# ============================================
suggestions_header:.asciiz "\nSMART SUGGESTIONS:\n"
sugg1:             .asciiz "Meditation session in Yoga Room (3:30 PM - 4:00 PM)\n"
sugg2:             .asciiz "Club meeting in Hostel Meeting Room (5:00 PM - 6:00 PM)\n"
sugg3:             .asciiz "Gym workout (optimal evening window for wellness focus)\n"

# ============================================
# OUTPUT STRINGS - MENU
# ============================================
menu_line:         .asciiz "\nMenu: [1-Schedule] [2-Grades] [3-Attendance] [4-Suggestions] [5-Exit]\n"

# ============================================
# PERSONALIZATION DATA
# ============================================
template_index:    .word 3                  # ID % 8 = 3
personality_index: .word 2                  # (ID >> 2) % 4 = 2 (Wellness & Clubs)
study_window_idx:  .word 3                  # digit sum % 5 = 3 (Late afternoon focus)

.text
.globl main

main:
  # Print header
  la $a0, header
  li $v0, 4
  syscall

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
  la $a0, current_day
  li $v0, 4
  syscall
  la $a0, newline
  li $v0, 4
  syscall

  # ===== SCHEDULE SECTION =====
  la $a0, schedule_header
  li $v0, 4
  syscall

  # Print column headers
  la $a0, schedule_col_header
  li $v0, 4
  syscall

  # Print schedule entries (already formatted with columns)
  la $a0, schedule_format1
  li $v0, 4
  syscall
  la $a0, schedule_format2
  li $v0, 4
  syscall
  la $a0, schedule_format3
  li $v0, 4
  syscall
  la $a0, schedule_format4
  li $v0, 4
  syscall

  # Free slots line
  la $a0, free_slots
  li $v0, 4
  syscall
  la $a0, free_slot_detail
  li $v0, 4
  syscall

  # ===== ACADEMIC OVERVIEW SECTION =====
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

  # ===== ATTENDANCE PLANNER SECTION =====
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

  # ===== SMART SUGGESTIONS SECTION =====
  la $a0, suggestions_header
  li $v0, 4
  syscall
  la $a0, sugg1
  li $v0, 4
  syscall
  la $a0, sugg2
  li $v0, 4
  syscall
  la $a0, sugg3
  li $v0, 4
  syscall

  # ===== MENU FOOTER =====
  la $a0, menu_line
  li $v0, 4
  syscall

  # Exit program
  li $v0, 10
  syscall
