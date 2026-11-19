---
name: story-map
description: Build or review a Patton-style user story map grounded in the project's Contextual Design data (consolidated sequences, UED focus areas, flow-model roles, personas, breakdowns). Covers the backbone of user activities, the steps under each, placing stories by priority, and release slices (MVP / walking skeleton). Use this skill whenever the user asks to make, draw, restructure, slice, prioritise, check or review a story map, backbone, user journey for the backlog, or releases/MVP, even if they don't name Patton. For writing or reviewing the individual stories, use the user-stories skill.
---

# Story map (Patton)

A story map arranges the backlog in two dimensions instead of a flat list, so the user's journey stays visible and it is obvious what goes into each release (Jeff Patton, *User Story Mapping*).

- **Horizontal axis, the backbone**: the user's activities in the order they happen, left to right. Under each activity, its steps (user tasks).
- **Vertical axis, priority**: under each step, the stories that let the user do it, most important on top.
- **Horizontal slices, releases**: lines across the map. The top slice is the MVP (the "walking skeleton"); lower slices are enhancements, comfort and edge cases.

The map is built from the project's research data, not from ideas. This skill handles the structure of the map. The stories themselves (template, INVEST, acceptance criteria) follow the **user-stories** skill; use it for any story you write or review here.

This skill has two modes: **build** and **review**. If the user doesn't say which, look at what exists. If there is a map already, review it. If there is none, build it.

## 1. Read the inputs

Find, in the project:

- the **consolidated sequence(s)**: activities, intents, triggers and steps, in order. This is the main source for the backbone;
- the **UED focus areas** and the links between them. They help name activities and check that every area the journey uses appears;
- the **consolidated flow model roles** and the **personas**. The journey is one role's journey (e.g. the group organiser, persona Inês); other roles appear as their own stories or a separate lane;
- the **breakdown table** and interview records (FM.1, SM.14, UE07…), to decide priority: stories that remove serious breakdowns go higher;
- any existing **stories, backlog or map**, so you keep IDs and don't duplicate work.

In this repo these are under `DOCS/1st_submission/` (report `relatorio/seccoes/`, models in `work_models/`). Deliverable 2's map and stories live in `DOCS/2nd_submission/story_map/`.

Write in the project's language (Portuguese for the Roamly report).

## 2. Build

### 2.1 Choose the journey

Pick the primary role and the journey the map tells, from trigger to goal (e.g. "from an idea for a trip to the group having paid"). The brief asks for at least one **full** user journey. Name the journey and the role at the top of the map.

### 2.2 Backbone

- List the user's **activities**, left to right, in the order of the consolidated sequence (e.g. explore ideas → compare options → budget → itinerary → decide with the group → pay).
- Name activities as the user would: verb + object, in the user's language, not as system modules ("Compare options", not "Comparison engine").
- Under each activity, list the **steps** (user tasks) in order.
- Read the backbone left to right: it should tell the journey as a short story with no jumps. If a step in the consolidated sequence has no place, add it or say why it is out of scope.
- Activities may correspond to UED focus areas, but follow the order of the user's work, not the order of the UED.

### 2.3 Place the stories

- Under each step, put the stories that let the user do it, **most important on top**. Each story sits under exactly one step.
- Priority comes from the data: stories that remove frequent or severe breakdowns, or that the journey cannot work without, go higher.
- Write or rewrite stories with the **user-stories** skill. On the map card, the short title (verb + object) and ID are enough; the full story and criteria go in the stories table.
- Stories for other roles (group member, travel agent) go under the step where they act, marked with the role, or in their own lane if the map covers two journeys.

### 2.4 Release slices

Draw lines across the map:

- **Release 1 (MVP / walking skeleton)**: the thinnest set of stories that lets the user go through the **whole** journey, end to end. Every activity has at least one story above the line. If an activity has none, either add one or state the gap and why.
- **Later releases**: enhancements, comfort, edge cases, other roles or versions (e.g. the agency version).
- Slice **vertically** (a bit of every activity in each release), never horizontally (one whole activity first, then the next).
- Give each release a name that says what the user can do after it ("From idea to agreed plan"), not "Release 1".

## 3. Review

Check the map and report problems with a short reason and a proposed fix:

**Backbone**
- Activities are in the order of the user's work and match the consolidated sequence. No step from the sequence is missing without a reason.
- Activities and steps are user activities (verb + object, user's words), not system features, screens or modules.
- One journey and one primary role are clear.

**Stories on the map**
- Each story sits under one step and actually supports it.
- Order under each step reflects priority, and the priority can be justified from the data (breakdowns).
- No duplicates; IDs match the stories table and other documents.
- Story quality itself is checked with the **user-stories** skill; mention here only problems that affect the map (an epic spanning several steps, a story under the wrong step).

**Release slices**
- Release 1 crosses the whole journey: list every activity with no Release 1 story.
- Slices are vertical, not one activity at a time.
- Releases have meaningful names and a clear goal.
- Release 1 dependencies are inside Release 1 (no Release 1 story depends on a later one).

**Legibility**
- The map can be read on its own: legend for markers (e.g. [A] for agency-only), journey and role named, IDs readable. If the picture is not legible, there is a stories table next to it (the brief asks for legible stories).

Output the review as a list grouped by the headings above, then the top three fixes. Don't change the files unless the user asks.

## Output (build mode)

- The **map** as a diagram (draw.io like the project's other models, or the tool the team chose). If you can't draw, give it as a grid table — columns = activities/steps, rows = release slices, cells = story IDs + titles — so someone can draw it.
- The **stories table** grouped by release (made with the user-stories skill).
- Save in the project's story map folder, tell the user where, and don't overwrite an existing map without asking.
- In the chat, list briefly: journey gaps in Release 1, steps without evidence, open questions, and the highest-priority Release 1 stories as candidates for the use cases.
