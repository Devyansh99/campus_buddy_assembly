# Campus Buddy Project Info

## Personalization Seed
- Student ID: `U20230107` (seed `0107`)
- Numeric seed: `107` (use last four digits per assignment)
- Derived constants:
  - Schedule template: `107 % 8 = 3` → Template #3 for today until real slots provided.
  - Campus personality index: `(107 >> 2) % 4 = 26 % 4 = 2` → influences location/activity suggestions.
  - Study window index: digit sum `0+1+0+7 = 8`; `8 % 5 = 3` → prefer late-afternoon focus blocks.

### Personalization Mappings
- **Schedule template choices (ID % 8)**
  - Template 0: Early-morning intensive day (8:30–11:30 classes with short lab slots after lunch)
  - Template 1: Late-morning start followed by long afternoon labs and evening study slot
  - Template 2: Midday lectures + project review + discussion rooms in the afternoon
  - Template 3: Midday clusters with a free slot before evening activities (selected for you)
  - Template 4: Afternoon-heavy sessions designed around design/project-based work
  - Template 5: Distributed load, mixing lectures and labs evenly across the day
  - Template 6: Evening labs, guest lectures, and late-night wrap-up slot
  - Template 7: Seminar-style/low-volume day mirroring a weekend schedule
- **Campus personality buckets (ID >> 2 % 4)**
  - 0 → Library Focus (quiet study rooms, faculty office hours)
  - 1 → Sports & Social (games, field visits, cafeteria hangouts)
  - 2 → Wellness & Clubs (gym, meditation, hostel meeting room activities) *(yours)*
  - 3 → Research/Project Mode (labs, hackathons, collaboration pods)
- **Study window map (digit sum % 5)**
  - 0 → Sunrise review (6–8 AM)
  - 1 → Mid-morning stretch (9–11 AM)
  - 2 → Noon clarity session (12–1:30 PM)
  - 3 → Late-afternoon focus block (4–6 PM) *(your preferred slot)*
  - 4 → Evening wrap-up (7–9 PM)

These mappings let us translate each derived index into concrete output choices. They are customizable—if you want to tweak template details, personality descriptions, or study windows, just edit the bullet descriptions above.

## Customizable Template Structure
- **Template 0 config**: `classes = ["Mathematical Foundations at 8:30", "Physics Lab at 10:00", "Data Structures at 11:30", "Short Review"], freeSlot=12:30-13:30, suggestions=["Library", "Tea Break"]`
- **Template 1 config**: `classes = ["Systems Design 10:30", "Machine Learning Lab 13:30", "Group Critique 15:30"], freeSlot=17:00-18:00, suggestions=["Sports Complex", "Evening Study Hall"]`
- **Template 2 config**: `classes = ["Network Theory 11:00", "Project Clinic 13:00", "Tech Talk 15:00"], freeSlot=16:00-18:00`
- **Template 3 config**: `classes = ["Discrete Math 12:00", "Embedded Systems 13:30", "Seminar 15:30"], freeSlot=16:30-18:00, suggestions=["Yoga Room", "Hostel Club Meeting"]`
- **Template 4 config**: `classes = ["Design Studio 14:00", "Fabrication Lab 16:30"], freeSlot=12:00-13:30`
- **Template 5 config**: `classes = ["Algorithms 9:00", "Lab Support 11:00", "Theory Discussion 14:00", "Peer Learning 17:30"]`
- **Template 6 config**: `classes = ["IoT Lab 18:00", "Guest Lecture 20:00"], freeSlot=16:00-17:30`
- **Template 7 config**: `classes = ["Self-study Block 10:00", "Seminar 12:30"], freeSlot=13:30-15:30`

## Customization Checklist
- [ ] Replace template placeholder arrays with your actual schedule entries once available.
- [ ] Update suggestion locations/time windows under `Campus personality buckets` to match your real activity preferences.
- [ ] Adjust study window time ranges if you prefer different focus hours.

## Academic Snapshot
- Current CGPA: `8.18`
- Target CGPA: `8.5`
- Total required credits: `160`
- Completed credits: `78`
- Current semester credits: `24` (5th semester)
- Planned distribution:
  - `6th + 7th sem` will cover remaining coursework (not yet finalized).
  - `8th sem` reserved for internship (16 credits).

## Progress Tracker Notes
- Need to calculate required SGPA using Plaksha's official CGPA/SGPA formulas.
- Visualize completion: `78/160` credits done, include semester credits when calculating rate.
- Track remaining credits for semesters 6&7 (value pending) plus internship credit block.

## Attendance Planner (Placeholders)
- Stay ready to include per-subject data: classes attended vs. total, cutoff percentage, required make-up classes.
- Current structure: build data table keyed on subject names and attendance counts once provided.

## Schedule & Activity Placeholders
- Today’s schedule will later reflect actual classes; for now, use template #3 placeholders.
- Personalized activity ideas:
  - Gym session in the Yoga Room (aligned with free slot and personality index `2`).
  - Meditation module also in the Yoga Room (short midday slot).
  - Club meeting in the Hostel Meeting Room (evening suggestion).
  - Suggestions should consider free slots and duration suited to schedule template #3.

## Next Steps
1. Finalize `.data` section using the above constants and placeholder schedule/attendance structures.
2. Implement modules sequentially: profile summary, schedule manager, progress tracker, attendance planner, recommendation engine.
3. Update schedule/attendance/activity details once you provide the real data.
4. Prepare demo/test notes along the way.
