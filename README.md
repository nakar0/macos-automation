# macOS automation scripts

A collection of my macOS automation scripts (Alfred workflow, AppleScript and JXA). To compile, run:

``` bash
make all
```

## AlfredProcess

A mega-workflow for [Alfred](https://www.alfredapp.com) that encompasses all of my custom automations. See its own [README](AlfredProcess/README.md) for details. To build just the workflow, run:

``` bash
make alfred-workflow
```

Then install the workflow via:

``` bash
open target/Process.alfredworkflow
```

<!-- End Process -->

<img src="AlfredProcess/assets/icons/calendar-alt.png" width="75" alt="Calendar Icon" title="Calendar" align="right" style="background-color: #fff;">

## Calendar

### Jump to upcoming event

Type `nowc` into Alfred to get a list of current and upcoming events on your calendar and quickly open them in Calendar app.

<img src="assets/screenshots/nowc.png" alt="Jump to event screenshot" width="600">

### Jump to relevant link

Type `nowl` into Alfred to get a list of links mentioned in current and upcoming events’ descriptions. Useful for quickly joining Zoom calls or jumping to time-blocked OmniFocus tasks.

<img src="assets/screenshots/nowl.png" alt="Jump to event screenshot" width="600">

<!-- End Calendar -->

## Mail

### Copy Mail message URL

Copies local URLs to messages in Apple Mail for quick referencing. URLs look like below and work both on macOS and iOS:

```
message://%3c20200219T233150.531069615694520168.noreply@letsencrypt.org%3e
```

<img src="AlfredProcess/assets/icons/sticky-note.png" width="75" alt="Sticky Note Icon" title="Notes icon" align="right" style="background-color: #fff;">

<!-- End Mail -->

## Notes

### Open Note URL / Copy Note URL

Apple Notes doesn’t provide URLs that work reliably across devices. I link to my notes using the following URLs format

```
shortcuts://run-shortcut?name=NoteURL&input=1582228319
```

This format works both on macOS (via these scripts) and iOS (via custom shortcuts) and relies on note creation date, which is
extremely reliable and unlikely to change.

### Generate Vocabulary Update

Whenever I see an unknown English word, I add it to a note in "🇬🇧English" folder. This script combine these separate notes into a single list that I can load into my space repetition software.

### Move selected note(s)

Press a keyboard shortcut (e.g., <kbd>⌥</kbd>+<kbd>⇧</kbd>+<kbd>M</kbd>) to move one or more selected notes to a chosen destination folder.

<img src="assets/screenshots/notes-move.png" alt="a screenshot of the Notes app with an open note titled 'Outdated Note', an Alfred prompt is asking to choose the destination folder, 'Archive' is highlighted" width="600">

### Jump to daily note

Type `nown` into Alfred to jump to a daily note in "🗓 Daily Notes" folder. Creates the note if doesn't exist.

### Selection to OmniFocus task

**Experimental.** Select any text in an edited note and turn it into a link to a new OmniFocus task. An additional bi-directional link between the note and the task is created via [Hook](https://hookproductivity.com).

<!-- End Notes -->

## OmniFocus

### Link to an OmniFocus task

Quickly link to any OmniFocus task or project via Alfred search. The currently active window is automatically hooked to the task.

<!-- End OmniFocus -->

## Safari

### Open Highlighted Link

Safari doesn’t automatically focus elements highlighted via search by page (like Chrome or Firefox). However, it can be done with a bit of AppleScript. [Read more](https://temochka.com/blog/posts/2018/12/18/navigating-the-web-safari.html) on my blog.

### Safari tab to OmniFocus

I could never figure out how to quickly add a Safari web page to OmniFocus (so it puts the page title into task and URL as a note) so I wrote this shortcut. Works for me!

<!-- End Safari -->