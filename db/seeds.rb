weapons_attributes = [
  {
    name: 'Knife'
  },
  {
    name: 'Gun'
  },
  {
    name: 'Spear'
  }
]

shields_attributes = [
  {
    name: 'Targe'
  },
  {
    name: 'Clipeus'
  },
  {
    name: 'Broquel'
  }
]

Weapon.destroy_all
Weapon.create!(weapons_attributes)

Shield.destroy_all
Shield.create!(shields_attributes)

avatars_attributes = [
  {
    name:         'Mario',
    lives:         3,
    attacks:       4,
    remote_photo_url:        "https://res.cloudinary.com/dmul9lvqo/image/upload/v1562085426/p6aqnmt5rbuuavvg3feo.png",
    victories:     0,
  },
  {
    name:         'Peach',
    lives:         5,
    attacks:       4,
    remote_photo_url:         "https://res.cloudinary.com/dmul9lvqo/image/upload/v1562085487/hvtexvavf151ucrma19w.png",
    victories:     0,
  },
  {
    name:         'Luigi',
    lives:         2,
    attacks:       4,
    remote_photo_url:          "https://res.cloudinary.com/dmul9lvqo/image/upload/v1562085468/ad0cwzppdvs6llhauwlz.png",
    victories:     0,
  },
  {
    name:         'Toadette',
    lives:         4,
    attacks:       3,
    remote_photo_url:          "https://res.cloudinary.com/dmul9lvqo/image/upload/v1562100305/kv4ydyzbtinhjxscu4ux.png",
    victories:     0,
  },
  {
    name:         'Yoshi',
    lives:         4,
    attacks:       2,
    remote_photo_url:         "https://res.cloudinary.com/dmul9lvqo/image/upload/v1562085514/hth3y3yypbkvhxclvy2u.png",
    victories:     0,
  }
]


Avatar.destroy_all
Avatar.create!(avatars_attributes)

battles_attributes = [
  {
    player_one_id:         1,
    player_two_id:         2,
    weapon_one_id:         2,
    weapon_two_id:         3,
    shield_one_id:         1,
    shield_two_id:         3,
    winner:                "Peach",
  },
    {
    player_one_id:         3,
    player_two_id:         4,
    weapon_one_id:         1,
    weapon_two_id:         3,
    shield_one_id:         2,
    shield_two_id:         2,
    winner:                "Toadette",
  }
]

Battle.destroy_all
Battle.create!(battles_attributes)
