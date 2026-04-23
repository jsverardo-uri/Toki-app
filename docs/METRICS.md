# Toki Metrics Design

## HEART Framework
[Toki HEART Framework](https://docs.google.com/presentation/d/128iw93qW4h2owtTTpwfKJo925EemAJ3awE7yg4ZeSPk/edit?usp=sharing)

## HEART Metrics

| Category | Goal | Signals | Metrics |
|----------|------|--------|--------|
| Happiness | Users feel the app reduces stress and is useful | Positive feedback, continued use | NPS score, survey completion rate |
| Engagement | Users actively interact with assignments | Frequent app usage, task interactions | DAU, assignments created per user, assignments completed |
| Adoption | Users successfully start using the app | Account creation, profile completion | New user signups, % completing profile, % creating first assignment |
| Retention | Users return to the app over time | Repeat logins, continued activity | 7-day retention, 30-day retention |
| Task Success | Users complete the core workflow | Assignment completion, smooth navigation | CTR (assignment_completed / assignment_viewed), % assignments completed |

## Metric Collection

- NPS:
  Collected via an in-app survey shown after completing the Golden Path. The response is stored in Firestore under the user document.

- Adoption (User Signups):
  Collected automatically through Firebase Authentication when a user creates an account.

- Profile Completion Rate:
  Tracked by checking if required fields (display_name, school, birthday) are populated in the Firestore users collection.

- DAU (Daily Active Users):
  Collected automatically using Firebase Analytics via the `app_open` event.

- Engagement (Assignments Created):
  Stored in Firestore under the assignments collection. Counted per user per day.

- Retention:
  Measured using Firebase Analytics cohort analysis to track returning users over time (7-day, 30-day retention).

- CTR (Assignment Completion):
  A custom Firebase Analytics event (`assignment_completed`) is triggered when a user marks an assignment as complete. CTR is calculated as completed events divided by assignment view events.

- Task Completion Rate:
  Derived from Firestore by comparing completed assignments vs total assignments per user.

- Average Assignments Created per User:
  Calculated from Firestore by aggregating assignment documents per user over time.

## Metrics User Story

As a product owner,
I want to track user activity such as signups, logins, and assignment completion,
so that I can measure engagement, retention, and overall app success.
