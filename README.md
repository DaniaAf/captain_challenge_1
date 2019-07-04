## Captain's Challenge

As a user you can launch battles between avatars. The user choose 2 avatars + for each one a shield and a weapon.
Each avatars have a number of lives and a number of attacks, this would determine who is the winner.
The user can also check all the history of battles.
The user can also create / edit and delete avatars.


## Architecture, Models, Data

4 models :
Avatar: that have a name / photo / number of lives / number of attacks / number of victories
Shield: name of the shield that can be chosen for an avatar during a battle
Weapon: name of the weapon that can be chosen for an avatar during a battle
Battle: related to 2 avatars through foreign keys. (it has 2 avatars’ id and a winner name) / related also to 2 weapon and 2 shields.

Seed : created model’s instances.

## Development

- rails db:seed
- Cloudinary key in .env


## Peculiarity

Cloudinary & Carrierwave gem for hosting and uploading photos of avatars.
