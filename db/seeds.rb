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
    photo:         "https://res.cloudinary.com/dmul9lvqo/image/upload/v1562085426/p6aqnmt5rbuuavvg3feo.png",
    victories:     0,
  },
  {
    name:         'Peach',
    lives:         5,
    attacks:       4,
    photo:         "https://res.cloudinary.com/dmul9lvqo/image/upload/v1562085487/hvtexvavf151ucrma19w.png",
    victories:     0,
  },
  {
    name:         'Luigi',
    lives:         2,
    attacks:       4,
    photo:         "https://res.cloudinary.com/dmul9lvqo/image/upload/v1562085468/ad0cwzppdvs6llhauwlz.png",
    victories:     0,
  },
  {
    name:         'Toadette',
    lives:         4,
    attacks:       3,
    photo:         "https://res.cloudinary.com/dmul9lvqo/image/upload/v1562100305/kv4ydyzbtinhjxscu4ux.png",
    victories:     0,
  },
  {
    name:         'Yoshi',
    lives:         4,
    attacks:       2,
    photo:         "https://res.cloudinary.com/dmul9lvqo/image/upload/v1562085514/hth3y3yypbkvhxclvy2u.png",
    victories:     0,
  }
]


Avatar.destroy_all
Avatar.create!(avatars_attributes)



