# Godot-helper
This is to help you use LootLocker in Godot make sure to read the README for how to set it up.


# Notes
This will only work for Godot projects that uses Gdscript!

# Installation
Start by installing the ZIP file and extract it.
Take the extracted folder `LootLockerSDK` and drag it into your Godot project.

Initially you may get some errors, to resolve this open `Project`->`Autoload`

Here you need to add two scripts.

1. LootLockerAPI
2. LootLockerConfig
The setup should look as following:
![image](https://github.com/user-attachments/assets/df4cf2c0-0869-4b34-b066-bee4b530de79)

Finally, we just need to add an api key and game_version.

game_version is a semantic versioning, meaning it should look like 0.0.1

Find the api key [here](https://console.lootlocker.com/settings/api-keys) be sure to use the GAME API
![image](https://github.com/user-attachments/assets/14b2c319-802c-45ca-8093-f0094c531491)
If its empty, just create a new and copy it and paste it into the `LootLockerAPI.gd` script

This is where the information goes:
![image](https://github.com/user-attachments/assets/cb3f721a-61d2-48c6-9237-1241bb7838c8)


# Features
Currently I have supported the following features from [LootLocker](https://lootlocker.com/features)
## Guest Session
Currently this is the only authentication method I have implemented as of yet.
```gdscript
var response : GuestSession = await LootLockerAPI._guestLogin()
```
## Player Name
You can get and set the playername by doing the following:
```gdscript
#Get name -
var response : PlayerName = await LootLockerAPI._getPlayerName()

#Set name -
var response : PlayerName = await  LootLockerAPI._setPlayerName("Cool Name!")
```

## Leaderboards
You can Submit a score and get a list of entries:
```gdscript
#Submit score -
var leaderboardResponse : LootLockerLeaderboardSubmit = await  LootLockerAPI._SubmitScore("leaderboard_key", "member_id", score, metadata)

#Submit score to Player leaderboard -
##We're not adding a member_id since the leaderboard is of type Player, it is not needed
var leaderboardResponse : LootLockerLeaderboardSubmit = await  LootLockerAPI._SubmitScore("leaderboard_key", "", 152, "Some interesting metadata")

#Submit score to Generic leaderboard -
##We're adding a member_id as if the leaderboard is of type Generic, it is needed
var leaderboardResponse : LootLockerLeaderboardSubmit = await  LootLockerAPI._SubmitScore("leaderboard_key", "generated_id", 152, "Some interesting metadata")

#List score
var getLeaderboard : LootLockerGetLeaderboard = await LootLockerAPI._ListLeaderboard("leaderboard_key")
```

# Support 

You can contact me directly through Discord at `AlmigthyMikkel`
