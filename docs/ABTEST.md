# A/B Test Design

## A/B Test Name:
Assignment Completion UI: Checkbox vs Swipe Interaction

## User Story Number:
US4: Golden Path (Assignment Tracking)

## Metrics:
- Task Success (CTR: assignment_completed / assignment_viewed)
- Engagement (Assignments completed per user)
- Retention (7-day retention rate)

## Hypothesis:
Users will complete more assignments when using a swipe interaction compared to a checkbox, because swipe gestures are faster and more engaging on mobile devices.

## Problem:
Users may not consistently mark assignments as complete, reducing the effectiveness of the app as a task tracker. If users overlook or ignore the completion UI, assignment tracking becomes less useful, directly impacting engagement and retention.

This problem impacts most users, as assignment completion is a core feature of the Golden Path. If users do not complete tasks in the app, they are less likely to return or rely on it.

The suspected bottleneck is the **interaction design of the completion action**—a checkbox may not be prominent or engaging enough to encourage interaction.

## Experiment:

We will use Firebase A/B Testing and Firebase Analytics to run the experiment.

### Audience:
- 50% of users → Control group
- 50% of users → Variant group

All users who reach the home screen (assignment list) are eligible.

### Setup:
- Control group sees a **checkbox button** to mark assignments complete
- Variant group sees a **swipe-to-complete interaction**

### Tracking (Firebase Analytics):
We will track the following events:
- `assignment_viewed` → triggered when assignments are displayed
- `assignment_completed` → triggered when a user marks an assignment complete

### Metrics Measurement:
- CTR = assignment_completed / assignment_viewed
- Engagement = number of completed assignments per user
- Retention = users returning within 7 days (Firebase cohort analysis)

### Rationale:
We split users evenly (50/50) to ensure statistically meaningful comparison. The experiment targets a high-impact interaction in the Golden Path.

## Variations:

### Control (Version A):
- Each assignment row includes a **checkbox button**
- User taps checkbox to mark complete

### Variant (Version B):
- Each assignment row supports **swipe gesture (left or right)**
- Swiping marks the assignment as complete instantly

### Design Notes:
- Both versions display identical assignment information
- Only the interaction method (checkbox vs swipe) changes
- This isolates a single variable for accurate testing
