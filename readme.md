Doom Combined Release Candidate 1
======================

Changelog
----------

**When upgrading to a new version, you will need to re-run make.cmd. If there are any ACS script changes, all savegames made for previous versions will stop working. The script changes whenever there are texture updates or item placement updates**

**RC2**

- Changed the install script. Will now be more reliable, and will install less files if you are using less games (for example, it won't have INTERPIC variants for some wads even when they aren't included)
- Fixed Freedoom1 and Freedoom2 level names having map-name prefixes, such as "C1M1: Outer Prison" instead of "Outer Prison"
- Fixed some bugs with Master Levels not having proper map07special tags (When all Mancubi die, do stuff, etc)

**RC1**

- Added support for the John Romero E1M8 remake. Currently, this forms it's own episode
- Fixed a few DHTP Bugs
- Added a randomizer, which will make PWADs have some Doom 2 content. Fat enemies won't be spawned because they might get stuck in walls. The randomizer can be turned on/off, and specified to be used only for PWADs
- Moved the added blood pool spawned in E1M1 to make it more obvious - This is done as a way to demonstrate that the item spawner is working and the mod is installed properly.
- Added a small delay to the Baron Fight Hellknight spawns
- Added a super-shotgun to E4M9
- Fixed an arch-vile spawn on E2M5 not having the "Teleport in" effects
- Finished off all Doom 1 maps item placements - now to focus on Freedoom and other maps
- Bug fixes and some internal file changes

**4.0**

- Added support for the Freedoom wads. Currently, no items are replaced, but all maps are playable with the Doom 2 textures/sprites.
- Added a console cvar to turn off Master Levels weapon stripping if it is not desired
- Added checks to make sure we are only stripping vanilla weapons (not mod-added ones) when playing the Master Levels, as it's not possible to replace the correct weapons via script
- Changed the way the map hashes are generated, to increase compatibility with mods like DarkDoom that change sector brightness
- Added a lot more enemy and item placements to E4, tweaked some others in Doom 1 maps.
- Fixed some animated textures breaking if having some wads but not other (eg providing TNT.WAD but not DOOM.WAD)

**3.0**

- make.cmd now creates 2 files - DC_gzdoom.pk7 and DC_zandro.pk7. The gzdoom version is more advanced, but is only compatible with the gzdoom source port. the Zandro version will work in GZDoom and Zandronum, but has less features
- Added an options menu to configure the mod (only in the GZDoom version)
- Tweaked a lot of item placements based on feedback. In some cases, original items/enemies have been replaced with Doom 2 versions (for example, the Chaingun pickup in E1M2 is now a chaingunner)
    - Replacement does not work in Zandronum, so that feature is disabled in that version, however all added items still work.

**2.0**

- Added the ability to use TNT's animated computer monitor textures in all other games. This can be disabled with a console command.
- Added some more item placements, including placement of Doom 2 specific decorations, in Doom 1. I am still looking for recommendations and feedback on this
- Added an intermission screen for the Master Levels for Doom 2, created by Julio Jimenez.
- Internal file reorganisation. This is just for organisation and shouldn't affect much.
- thyinterpic.wad is now automatically present within the _DOOM_IWAD folder in the archive, as it is extremely hard to come by. As it effectively doesn't exist anymore, and I can not contact the original developer, I have included it in the hopes that someone might find it useful. If there are any issues, I will remove it for the next release.

**1.21**

- Fixed up some Plutonia textures that were causing conflicts in other maps. DBRAIN1 for example.

**1.2**

- Added the ability to use NERVE.WAD from Doom 3 BFG Edition to get the NRFTL maps, rather than having to use the (far more obscure) NRFTL+.WAD

**1.1**

- Fixed the batch file using cp instead of copy. Windows by default doesn't come with cp. I had installed it and forgotten that it was not standard.
- Fixed a texture error related to SW1STONE in Doom 1
- Other minor script fixes

Overview
--------

This mod aims to create a streamlined experience across all retail Doom IWADs, including Doom 1, Final Doom, and the Master Levels. It dynamically replaces textures when needed, and can (optionally) spawn Doom 2 enemies in Doom 1.

It works by dynamically creating a pk7 file for use with GZDoom and Zandronum via a script. You will need to provide your own versions of the relevant IWAD files. See the Installation section for more info.

**This pk7 file should be used as a pwad for Doom 2. It contains no information from Doom 2 at all and does not run as an IWAD.**

This mod is in BETA! Expect to find bugs!

Features
--------

This mod contains the following features:

1. Support for Doom 1 (and Ultimate Doom), Doom 2, Master Levels for Doom, No Rest for the Living, John Romero's E1M8 remake, and Final Doom to all be played alongside each other seamlessly.
2. Support for Freedoom and Freedoom 2 as their own standalone episodes using Doom 2 textures and assets.
3. Support for Doom 2 assets (enemies, decorations, weapons, etc) to be dynamically added to Doom 1 maps in specific locations. (This can be turned off if not desired)
    - Support for Maps of Chaos versions of Doom 1 maps as well
4. Support for thyinterpic.wad to be automatically integrated to provide Episode 4 with an intermission screen
5. Par times for Episode 4. These are mostly arbitary at the moment.
6. Adds some special Brutal Doom features (such as Belphegors instead of hell knights in the Baron boss fight)
7. Automatically removes the player inventory between maps in the Master Levels (not currently supported with Brutal Doom)
8. Adds Doom 1 quit messages (yes it has different quit messages), Read This!, and credits screen.
9. Allows you to use the animated computer screens included in TNT instead of the static ones everywhere, if you have TNT.WAD included. Configurable.
10. Options menu for configuration (only in GZDoom)

Randomizer
----------

The randomizer will automatically replace objects in Doom 1 maps based on the following criteria:
- From level 2 onwards, Chainguns have a 1 in 2 chance to be SuperShotguns
- From level 3 onwards, Imps have a 1 in 6 chance to be Chaingunners and Shotgunners have a 1 in 10 chance to be Chaingunners
- Barons have a 1 in 3 chance to be Hellknights and a 1 in 7 chance to be ArchViles
- Cacodemons have a 1 in 5 chance to be Pain Elementals
- No enemies are replaced on boss maps (ExM8) to avoid issues with boss monsters and triggering special effects

These work with other mods as well, which means a mod like Project Brutality that allows Barons to be Afrits, or flying barons, and other kinds of mosters, will appropriately substitute in monsters after the randomizer.

The randomizer must be enabled in the options menu, and can be enabled for PWADs only (anything that isn't the Doom 1 or Freedoom1 main campaign, where items are handplaced), or always enabled (will work for all Doom 1 and Freedoom1 maps)

Console Commands
----------------

The console can be accessed with the ~ key on English keyboards (or the key below the 1 key on some other keyboards). This mod adds the following commands:

- *dc_no_extra_actors* true/false (defaults to false). Setting this to true will prevent any special Doom 2 or Brutal Doom weapons/enemies/decorations spawning in Doom 1. Use this for the "vanilla" unmodified experience
- *dc_debug*  true/false (defaults to false). Setting this to true will print debug messages in the corner of the screen when starting a new map. Not recommended to be turned on unless you are reporting a bug. 
- *dc_use_tnt_animated_textures* true/false (defaults to false). Setting this to true will allow some textures in all maps to be replaced with the special TNT animated versions of those textures. This will not take effect in TNT maps, and will do nothing if you do not have TNT included.
- *dc_allow_continuous_master_levels* true/false (defaults to false). Setting this to true will allow the player to keep their weapons between levels when playing the Master Levels episode. Their health will also not be reset to 100.
- *dc_use_randomizer* 0/1/2 (defaults to 0). Set to 0 to disable the randomiser completely. Set to 1 to allow some objects on PWAD maps (aka, maps not automatically-populated by the item placer) to be randomized. Set to 2 to allow all Doom 1 maps to have some items randomized.

These console commands can be set using an in-game menu (GZdoom only)


Installation
------------

Installation requires performing a few basic steps. Because providing copyrighted material in the form of commercial WAD files is forbidden, this mod requires you to provide your own versions.

Generation of the mods files can be done with the following steps:

1. Extract the contents of the downloaded archive anywhere on your hard disk.
2. Copy (do NOT move them, as I can not be held responsible for them if something breaks) over any commercial WAD files you want added to the mod into the _DOOM_IWAD folder where you extracted the archive
3. Run make.cmd. This should create a command window showing you the progress of extraction and combination. Once this is done, press any key to close it
4. If run correctly, this should have created a file called DC.pk7 in the same directory. This is the file you should run in gzdoom. Every other file in this directory is now safe to delete.
5. Run DC_zandro.pk7 (in Zandronum) or DC_gzdoom.pk7 (in GZdoom) with Doom 2 selected as your IWAD.

A number of files are supported, and will all be folded into the final archive if they are present in the _DOOM_IWAD directory.

- **ATTACK.WAD, BLACKTWR.WAD, BLOODSEA.WAD etc** - The Master Levels. Adding these wads will add the Master Levels episode to Doom 2. Each map uses different music tracks, as they all used D_RUNNIN originally. Weapons will be removed between missions.
- **DOOM.WAD** - Doom 1 or Ultimate Doom. This will add the 3 (or 4) episodes from the original game to Doom 2. Episode 4 has added par times. There is currently no support for shareware doom! It may work, but it probably will not
- **NRFTL+.WAD or NERVE.WAD** - No Rest for the Living Bonus Campaign. This was an XBLA exclusive release for Doom 2. Providing this file will add the episode to Doom 2. Also available in the Doom 3 BFG Edition
- **PLUTONIA.WAD and TNT.WAD** - Final Doom. Adding either of these will add their respective Final Doom Episode to Doom 2.
- **thyinterpic.wad** - This will add intermissions screens to Episode 4. This is automatically included. If you do not wish to use intermission screens for episode 4, simply delete this file or rename it to something like thyinterpic.bak.
- **freedoom1.wad** - This will add the Freedoom 1 episodes to Doom 2, using Doom 1/2 textures where possible. Will also create required Doom 1/Plutonia/TNT textures if the official WAD files are not present, allowing maps using these textures to be played.
- **freedoom2.wad** - This will add the Freedoom 2 maps to Doom 2 as an episode, using Doom 2 textures where possible. Will also create required Doom 1/Plutonia/TNT textures if the official WAD files are not present, allowing maps using these textures to be played.
- **e1m8b.wad** - This will add the John Romero e1m8 remake map to Doom 2 as an episode.

How it works
------------

This batch file uses [wadext](https://github.com/coelckers/wadext) and [7-zip](https://www.7-zip.org/) to extract the contents of the original wads into folders, then copy them to a temporary directory, zip them, then delete the temporary directory.

The in-game texture swapping and item spawning scripts are written in ACS. Source code has been provided in the archive to allow others to potentially learn something or understand how it works.

Each level is detected by generating a hash, the hashing function can be found in func.acs.

I apologize in advance for the bad quality of code.

How to report a bug
-------------------

As this is a BETA, it should be expected that there will be bugs. Especially in some use cases where this mod has not been tested ie. multiplayer.

If you find an issue in-game, you can report it to me on moddb or via email (I can be reached at tunbridgep@gmail.com). If sending me a message, please include the words "BUG REPORT" and "Doom Combined" somewhere in the subject line.

You can help me diagnose issues more quickly by setting **dc_debug** to true in the console. With this turned on, it will provide a lot of extra information in the console when a new level is loaded. Providing this information would be extremely useful.

Changes from Vanilla versions of the WADs
-----------------------------------------

- No Rest for the Living uses a red version of the standard Doom 2 intermission screen background which is based on the SKINFACE texture. This is for variety.
- Master Levels uses a special custom intermission screen image based on the original white and light-gray look of the CD case and poster
- Doom 2 Content Added to Doom 1 levels
- Master Levels are one continuous episode, rather than a series of individual wads/maps. Each mission also has different music, rather than all using the same handful of tracks

Known Issues
------------

- The mod currently does not strip weapons when playing Brutal Doom for the Master Levels.
    - Getting the Brutal Doom version of the player to a usable state while taking away all their items is a real pain as Brutal Doom relies on a lot of hidden special inventory items for core functionality. Making these undroppable would make this problem go away.
- The IDCLEV Cheat only allows you to access doom 2 maps. To access doom 1 maps, you can type "changemap e2m2", for example, into the console. This is part of the way the IDCLEV cheat works and there is nothing I can do to change it.
- Some DHTP textures do not scale properly. I do not know how to fix this and would appreciate help on this. Please send me a message if you're able to help.

Planned Features
----------------

- Doom 2 items for Freedoom 1, similar to Doom 1
- Adding PSX Maps
- Freedoom Textures for Freedoom
- Support for Sigil (when it releases)
- A proper, more robust installer, probably based on NSIS. I am open to suggestions here.

For feature requests, suggestions for item placement, balance suggestions etc, I can be reached at tunbridgep@gmail.com

Item Placements
-----------

Here are some examples of item and enemy placements in Doom 1 maps. This list is not exhaustive and is only for showing off specific examples rather than being a comprehensive list of all item placements. SPOILERS FOLLOW

- E1M2:
    - Adds 2 chaingunners to the dark room with the elevator before the end of the map
    - Adds a chaingunner into the exit room
- E1M3:
    - Adds a SuperShotgun and a Revenant into the poison pit in the outdoor area
- E1M8:
   - A Medkit is added to the Baron of Hell chambers (you're gonna need it, read below)
   - A SuperShotgun on the elevator leading up to the Baron fight
   - During the baron fight, 5 Hell Knights will spawn in during the fight. If you are playing Brutal Doom, 3 belphagors will spawn instead. 

Credits
-------

- Julio Jimenez - Master Levels styled Intermission Picture (file name is MLTERPIC)
- Skunk - Creation of the E4 Intermission Map (thyinterpic.wad)
- Christoph Oelckers - Creator of wadext
- 7-zip Team
- John Romero, Nerve software, the authors of the Master Levels, and the Freedoom team for their contributions.
