# Customizable Elements in Campus Buddy

## Currently Fixed/Hardcoded Items That Can Be Changed

### 1. ACTIVITY SUGGESTIONS (For Free Slots)
**Current suggestions in output:**
- "Meditation session in Yoga Room (3:30 PM - 4:00 PM)"
- "Club meeting in Hostel Meeting Room (5:00 PM - 6:00 PM)"
- "Gym workout (optimal evening window for wellness focus)"

**These can be changed to:**
- Study sessions (library, labs, home)
- Sports activities (badminton court, gym, sports complex)
- Social activities (cafe, hostel common room, gaming zone)
- Cultural activities (art room, music practice room, drama club)
- Wellness activities (yoga, meditation, counseling center)

---

### 2. LOCATION REFERENCES
**Current locations in code:**
- Lecture Hall A
- Lecture Hall B
- Lab Block 1
- Lab Block 2
- Mentor Room
- Yoga Room (suggestions)
- Hostel Meeting Room (suggestions)

**These can be changed to real campus locations:**
- Your actual lecture halls/buildings
- Labs
- Meditation/Wellness center name
- Sports facility name
- Cafeteria/Canteen name
- Library name
- Hostel name

---

### 3. PERSONALIZATION PERSONALITY TYPES
**Current mapping for Activity Preference (ID & 0x7) % 3:**
- 0 = Library Focus
- 1 = Sports & Social (YOUR TYPE)
- 2 = Wellness & Clubs

**These can be customized to:**
- Your actual personality traits
- Different activity categories
- Different preference types

---

### 4. OPTIMAL STUDY TIME WINDOWS
**Currently hardcoded time windows:**
- Early-morning: 6-8 AM
- Mid-morning: 9-11 AM (YOUR PREFERENCE)
- Noon: 12-1:30 PM
- Late-afternoon: 4-6 PM
- Evening: 7-9 PM

**Can be adjusted to:**
- Your actual productive hours
- Campus timing constraints
- Class schedule compatibility

---

### 5. LOCATION RECOMMENDATION LOGIC
**Current factors:**
- Lunch time (12-2)
- Time slot duration
- Personality preference
- Distance (2 min to all locations)

**Can be enhanced with:**
- Crowding levels at different times
- Difficulty of upcoming class
- Energy levels (low = rest, high = activity)
- Subject-specific study location (CS=Lab, Theory=Library)

---

### 6. SUBJECT DIFFICULTY LABELS
**Subjects you have:**
1. Deep Learning
2. Theory of Computation
3. Fundamentals of CS
4. Electromagnetics
5. Search Methods in AI
6. Narrative Twists
7. ILGC (not a subject)

**For difficulty input system:**
- Can ask user to rate each subject (1-5 scale)
- Can use pre-assigned difficulty values
- Can factor this into study recommendations

---

### 7. HOSTEL/LIBRARY PREFERENCE LOGIC
**Current distance model:**
- 2 min to Hostel
- 2 min to Library
- Both same distance

**Can be customized with:**
- Actual campus distances
- Priority (if both available, which to prefer?)
- Availability times (library hours vs hostel hours)
- What facilities each offers

---

### 8. FREE SLOT SUGGESTIONS ALGORITHM
**Currently simple:**
- If personality = Sports → Suggest Sports Complex
- If personality = Wellness → Suggest Yoga/Rest
- If personality = Library → Suggest Study

**Can be enhanced with:**
- Subject difficulty (study hard subjects during free slots)
- Time of day (morning = serious study, afternoon = relaxation)
- Slot duration (short slot = stay near, long slot = can go anywhere)
- Cumulative fatigue (track classes taken, suggest rest if tired)

---

## Decision Needed From You

**For the following, please decide what you want:**

1. **Free Slot Activities**: What should be suggested?
   - Gym session?
   - Library study?
   - Meditation?
   - Club meetings?
   - Cafe break?
   - Hostel rest?

2. **Locations on Campus**: What are the actual names/places?
   - Yoga/Wellness center?
   - Sports facility?
   - Hostel name?
   - Library name?
   - Cafeteria?

3. **Priority for Hostel vs Library**:
   - If both available and time allows, which should be suggested?
   - Should it depend on personality?
   - Should it depend on subject difficulty?

4. **Activity Intensity During Free Slots**:
   - Should we push you to study hard subjects?
   - Should we suggest rest based on class load?
   - Should personality dominate the choice?

5. **Time Slot Recommendations**:
   - Are your 11 AM - 1 PM mid-morning slots good for study?
   - Should suggestions vary by day of week?
   - Should Saturday recommendations differ (your priority day)?

