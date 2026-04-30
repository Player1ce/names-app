# Names App to track connections

Basically a CRM app for all of my personal and proffesional connections

## setup

run `flutterfire configure` from the root of the project to set up API keys.

## features

### main features

- page to quickly enter a new person:
  - name
  - origin of connection (event, location, etc)
  - location of first meet
  - category: personal, proffesional, other, etc...
  - age
  - gender
  - brief appearance description
  - optional photo
  - tags (work, school, family, etc)
- map view of names with small profile photo connected to location of first meet, location of work, or residence/home town
- special view for event of first meet (reason for special view to come)
- list view of names grouped and sorted by different categories (event of first meet, location of first meet, tags, alphabetical, etc)
- profile page for each name with:
  - name, orogin of connection (event, location, etc), location of first meet
  - age, gender, one line physical description
  - tags (work, school, family, etc)
  - what to ask section:
    - a place to jot down things to ask about next time I see them, or things they mentioned last time that I want to follow up on
    - split into section for relationship building and section for productivity/goal related things to ask about
  - notes section for general notes about the person, or things to remember about them
  - AI Dossier: an AI generated dossier on the person including connecting questions, origin, and identifying details to help me remember who they are and what we talked about + what I should talk about. This is meant to be a quick refresher before I see them again, or a way to jog my memory if I haven't seen them in a while.

### stretch goals/deep features

- quiz mode to practice memory of people.
- search feature in list view and map view to quickly fdind people:
  - search by name for base feature
  - expand to enable tag search, location search, event search, etc
- Agent integration to chat about people and get answers to any questions about them based on the info in their profile and our past interactions. This would be a way to quickly get up to speed on someone before seeing them, or to get insights about them that I might have missed.
- AI generated conversation starters based on the person's profile and our past interactions, to help me have more meaningful conversations with them and build stronger connections.
- AI generated follow up questions based on the person's profile and our past interactions, to help me have more meaningful conversations with them and build stronger connections.

Feature breakdown (WIP):

## backend

- task storage on cloud
- task creation + automatic exp calculation based on difficulty
  - **** slider for task exp for easy vibes based rating
- xp storage
- profiles
- temp local backup enabled when cloud unavailable!
