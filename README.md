# HERE'S Where you left off:
    Currently Working On: Rails back-end (API routes)
            Characters: all GOOD
        Settings: all GOOD
        Actions: (probably) all GOOD
        Props: half-GOOD. Works thru setting-model routes, but not character-model routes
            I think i need to set up conditionals (if statements) making the parent (char-or-setting) the condition
            There might also be a way to simplify how the parent params are generated AND just listen for the parent params first before determining what model to access.

    ALSO:
        - My model structure still requires some refactoring before the presentations if I plan to get the minimum that I want, so keep in mind the info learned about db migrations, alterations, and deletions.
        - README
        - OUTCOMES
            All I need is:
                - a Brand Statement
                - a completed GA Profile

FINISH!!!
# 
    WHATS ABOUT TO HAPPEN:
        - Write User Stories for established models
        - Add to Trello
        - wireframe user stories
        - Pseudo-code functionality
        - Pseudo-code controllers
        - code controllers
        - 
# 20180730
    What Needs to get DONE
        - ERDs
        - Users Stories
        - Trello
        - Splash Screen (Router entact)

## User Stories
User goes to fabler app
    - sees Navigation/Header Bar
        - hamburger buttons
            - produces menu
                - (Script) Logo (mobile)
                - Navigation quick links
                    - Link to "Create Story"
                    - Link to "Stories(Index) by Others"
                    - Link to About Page
                **- User logged-in status**
                **- User mini card**
        - sees Scipt/Logo
        - (sees **Search Bar**)
        - (sees **Button**)
            - Allow user to toggle display style of cards
                - to help mobile first on landscape
    - sees splash
        - sees pictures slideshow/transitioning
            - pictures are related to 
                - books
                - writing
                - scripts
                - storyboards
        - sees Tagline across the screen
        - sees buttons
            - Link to "Create a Story"
            - Link to About Page
            - view All posted Stories(Index)
        - scrolls beyond "splash" (if starts-with, )
            - sees [ Either ] (Model/feature)Home {component}
                - sees 
                - sees Featured Component
                    - Most Recently Added Story
                    - sees Popular APIs used... (Index)
                    - sees Popular Stories (Index)
                - ### Components
                    - Story Maker
                        - New Story (group)
                            - Story: attributes
                                - Name
                                - **type**(idea media type [Script, User Stories, Book, Comic, Cartoon, etc...])
                                - Settings (references)
                                - Characters (references)
                                - Props (references)
                                - Actions (references)
                                - Events (references)
                                - Scenarios (references)
                                - **Stories**
                            - New Scenario (group of events)
                                - Scenario: attributes
                                    - Title
                                    <!-- Multi -->
                                    - **type**(probably not though)
                                    - Characters (references) "This scenario involves..."
                                    - Props (references) `This scenario features...${Prop.detail?, Prop.name}`
                                    - Happenings (references where happenings? == true) `In this scenario, something could be ${doing}:... `
                                    - Events (references) `These things happens in this scenario`
                                    <!-- Singles -->
                                    - Setting-ID (reference) `This scenario takes place here: ${Setting.Name}.`
                                    - Story-ID (reference) `This scenario occurs during ${Story.name}.`
                                - New Character
                                    - Name
                                    - attributes
                                    - Image (url)
                                    - Props (references)
                                    - Story (reference)
                                - New Setting
                                    - Name
                                    - attributes
                                    - Image (url/can be chosen from image API)
                                    - Props (references)
                                    - Story (reference)
                                - New Prop
                                    - Name
                                    - attributes
                                    - Image (url)
                                    - Story (reference)
                                - (if one of Character, Setting, Prop exists) New Event
                                    - Title
                                    - Happening? (Is this event describing the environment or is it just an action?)
                                    - Subject (WHAT's doing something in this Event?)
                                        - Existents (either Characters, Settings, and/or Props)
                                    - Action
                                    - Object
                                        - Existents (either Characters, Settings, and/or Props)
                                    - Story (reference)

        
        
                    
        - sees three buttons
            -

# Google :portrait
    - Header
        - Navigation Bar
            - logo
            - search bar
                - speech-to-text toggle
                - button: submit
            - Google Options
                - Google applications
                - (connected) notification
                - User status
                    - Logged in
                        - switch account
                    - NOT logged in
                        - sign up
                        - log in
        - Content
            - Header
                - Google application Navigation
                    - Main options
                    - Application Options
            - Content Focus
                - Search (Index)
                    - Top 4 Pages
                        - Page 
                            - Page Information
                                - Title
                                - Link Address
                                - (Date) - (start of article content) ("...")
                    - Top 3 Video results
                    - Top 3 Relative FAQs
                    - Next 4 Pages
                    - Top 5 Image results
                    - Top 3 Relative Search
                    - Queries
                        - "Searches related to 'current' search."
                        - Top 8 Relative Queries
                    
            
    - Google Footer
        - (Date) (Address) - (description)
        - App Links