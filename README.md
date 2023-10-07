# todoapp

This is a full fledged to-do app for one to make, delete and edit their daily tasks and keep track of it.

### Features of this projects:
#### 1.Splash Screen:
A splash screen is displayed for 5 seconds before redirecting to the main page.
<img src="https://github.com/Riya-Jalgaonkar/ToDoApp/assets/136700099/877d3fa0-5974-4d4e-8ea0-09e83d6305a7" width="100" height="180">

#### 2.Main Page (First):
Displays a list of TO-DO tasks.<br>
Allows users to add new tasks.<br>
Allows users to mark tasks as completed using checkboxes.<br>
Allows users to delete tasks using a sliding action.<br>

#### 3.Data Persistence:
The app uses Hive, a lightweight and fast NoSQL database, for data storage.<br>
The Todobase class manages the interaction with the Hive database.<br>

#### 4.Dialog Box:
Users can create a new task using a dialog box that prompts for task input.<br>

#### 5.Styling:
The app uses Flutter's Material Design for a clean and consistent UI.<br>
Custom styling for buttons and tiles.

#### 6.Navigation:
Users are redirected to the main page after the splash screen.

#### 7.Error Handling:
If there are no tasks in the database, it creates an initial set of tasks.

#### 5.Buttons:
Custom buttons for UI interactions.

#### 6.Checkbox:
Allows users to mark tasks as completed or incomplete.

#### 7.Task Tile:
Each task is represented as a tile in the list.

#### 8.List View:
Tasks are displayed in a scrollable list.

#### 9.AppBar:
Displays the app title "TO DO" with a custom style.

#### 9.Floating Action Button:
Allows users to add new tasks.

#### 10.Theming:
The app uses a deep purple color scheme. with yellow buttons and checkboxes.

#### 11.Text Controllers:
Used for capturing user input in the dialog box.

#### 12.Text Styling:
Styling for task names, including strike-through for completed tasks.

#### 13.Data Loading:
If there are existing tasks in the database, they are loaded during initialization.

#### 14.Data Saving:
Tasks are saved and updated in the Hive database.
