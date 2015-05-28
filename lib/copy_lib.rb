module CopyLib

  def getNouns
    {
      Zombies: ['zombies', 'walkers'],
      Werewolves: ['werewolves','lycanthropes','lupines'],
      Vampires: ['vampires','the nosferatu'],
      Demons: ['demons','demonspawn','imps','hell-beasts'],
      Witches: ['witches', 'evil hags', 'coven'],
      Aliens: ['aliens'],
      Poltergeist: ['poltergeist','ghost'],
      Shades: ['shades','spirits'],
      Undead: ['undead', 'living dead', 'skeletons'],
      Monsters: ['monsters'],
      Psychopath: ['serial killer','murderer','the torturer','the psychopath'],
      Parasite: ['parasites'],
      Plague: ['plaguebringers','pestilent fiends'],
      Insects: ['giant spiders','swarm of spiders']
    }
  end

  def getCopy
    {
      general: {
        intro: [
          "It will be an interesting day for you, breaking the mould of the last few dreary weeks of your boring life.",
          "You might regret forgetting your lucky coin this morning.",
          "You will soon forget the tragic loss of your naval fluff collection last week.",
          "Your insatiable appetite for custard will finally cease to harm those around you"
        ],  
        astral: {
          good: [
            " Mercury is currently backwards in your fifth House. It is literally certain that if you purchase a lottery ticket today, you will win at least the major jackpot.",
            " Jupiter spins on its axis for you right now! Now is the perfect time to cook your favourite soup!"
          ],
          bad: [
            " It's probable that the impact of saturn's diurnal orb moving into jupiter's sphere of influence will upset the balance of nature. No promises though.",
            " The current astral configuration is disturbing latent evil forces."
          ]
        },
        sign: {
          good: [
            ["Ordinarily, this would make you transcendentally happy for the whole week! Er, bit of a catch today though.", 'mood'],
            ["Your natural charm will be enhanced by all the good vibes, look out world!", 'charm']
          ],
          bad: [
            ["This will have a dark impact on your emotional state and send you into a stubborn mood fit for a true #{self.zodiac}. It is up to you to decide how to deal with this. I'm not your mum, I can't tell you what to do.", 'mood'],
            ["Ordinarily, you might rely on your charmisma and winning personality to get you through any tough situations you encounter.", "charm"]
          ]
        },
        horror: {
          Zombies: [
            "No one will care much for your #{self.characteristic} by the end of the day as brain-eating zombies sweep through the city, killing everyone in sight. The highly infectious flesh-eaters will eat or turn anyone in their way, turning your once beautiful home into a desolate wasteland."
            ],
          Werewolves: [
            "Unfortunately your #{self.characteristic} doesn't come with magical dog-training abilities. This might have come in handy as the most recent full moon saw an outbreak of lycanthropy, and werewolves have been breeding rapidly in the forest. Today they will descend upon humanity and wreak a terrible revenge on dog-owners and other humans alike for not letting Fido eat that delicious steak off the table."
            ],
          Vampires: [
            "The previous days curious swarm of bats passing overhead will turn out to be an omen for the coming of a great evil. In the depths of darkness tonight, bloodsucking vampires will slink through the night and prey upon the innocent, leaving dry husks in their wake. Your #{self.characteristic} will do little to discourage a nasty vampire from making a meal of you."
            ],
          Demons: [
            "As you're on your way home later on tonight after purchasing a particularly promising batch of petunia seedlings, your delight will turn to horror as a portal to the netherworld opens up at your feet. Hell-beasts will burst from the earth and set the world alight - not in a Katy Perry kind of way. Demons will capture your loved ones and torture them for sport, before devouring their souls."
            ],
          Witches: [
            "You probably should have cleaned up the inconsipicuous pile of sticks you found at your doorstep yesterday. Turns out a coven of witches decided to use your family as human sacrifices for their nefarious magic. The binding spell will complete and you will be unable to escape or do anything other than watch as your home burns to ashes around you."
            ],
          Aliens: [
            "You will have a moderately satisfying dinner at home tonight, the signs currently point to meatloaf. Right around 8.30pm you will start to feel light-headed and black out. You will fuzzily awaken outside, staring up at a silver disc. The feeling of weightlessness will overtake you as you float upwards in a blue light. The final words you hear before you faint are spoken in an unearthly accent, 'prepare the probing device...'"
            ],
          Poltergeist: [
            "Sadly, you will discover that the 'pranks' your children have been playing, moving things around the house and slamming doors and windows will continue despite their abscence at school camp. The poltergeist haunting your house will grow bored of these games and start playing with the kitchen knives..."
            ],
          Shades: [
            "You will discover later today, while reading your Sony iKobindle-reader in bed, that your house was the site of a massacre some years ago. This chilling discovery will be followed almost immediately by the revelation that angry ghosts care nothing for your #{self.characteristic} as they rise throught the floor of your bedroom and strangle you with the sheets."
            ],
          Undead: [
            "By the end of the day your #{self.characteristic} will become secondary to the hell unleashed on earth as the dead rise from their graves and slaughter the innocent in their beds. The living dead will enter your home and rip your family to shreds, before feeding on their flesh."
            ],
          Monsters: [
            "You are not an easily worried or nervous person and have never believed in ghosts or monsters under the bed. Which is sensible as monsters don't live under the bed. Rather, they hide in the shadows and lurk unseen just around the corners of your vision. Later on today, monsters of unimaginable evil and malice will finally reveal themselves to humanity, slaughtering most and enslaving the rest."
            ],
          Psychopath: [
            "The Murder House tour you attend later today is a fairly bland and predictable: the House of the Balaclava Butcher, the House of the Toorak Torturer, the House of the Ill-Informed Doomsday Cult... All well recognised places. The last stop will be a very modern, lavishly adorned apartment so new you can smell the paint. You will curiously ask, “who was murdered here?” right before the screams start."
            ],
          Parasite: [
            "In good news, the itchy red spot on your upper inner thigh will turn out not to be what you were worried about. In not-so-good news, it will instead turn out to be a disgusting parasite that has wormed inside your body and is eating you from the inside out. Paralysis will set in and you will be unable to move, but you will feel everything."
            ],
          Plague: [
            "Your tendency to ignore problems until they grow significant will bite you on the arse today. Quite literally, one of the rats part of the growing infestation in your house will bite your arse tonight. Tragically, this will herald the return of the bubonic plague and you will go down in history as patient zero, of the event that begun the decline of humanity."
            ],
          Insects: [
            "Your #{self.characteristic} probably doesn't matter as much as your decision making ability. More specifically, your decision to live between an active nuclear power plant and an arachnid silk farm turns out to have been questionable. As giant mutant spiders burst through your windows later tonight and pounce on your family, poisoning and sucking their bodies dry, you will consider if the other side of town mightn't have been so bad."
            ]
        },
        nonseq: [
          " Try learning self defence, or write a letter to a loved one you haven't spoken to for a while.",
          " As a typical #{self.zodiac}, you're vulnerable to stress in a situation like this. Maybe take up yoga or buy some relaxing tea."
        ]
      },
      love: {
        intro: {
          good: [
            "A promising enounter with a mysterious stranger will bring some excitement."
          ],
          bad: [
            "Your life partner and soulmate will leave you for a more attractive, richer version of yourself. With less acne."
          ]
        },
        comment: {
          good: [
            " The medical-grade prescription strength deoderant you recently purchased is probably paying off here."
          ],
          bad: [
            " Things could be worse! It's not really clear how exactly."
          ]
        },
        horror: {
          good: [
            " The nervous buzz and tingling stomach you feel when talking to your new admirer will be quickly replaced with overwhelming terror and an empty stomach as you see their freshly disemboweled corpse rotting on the side of the road."
          ],
          bad: [
            " On the plus side your love life won't be your biggest problem once the horde of #{JSON.parse(self.nouns||"[]").sample} rampage through town leaving everyone you've ever met just a distant memory."
          ]
        },
      },
      money: {
        intro: [
          "Your investment in wearable technologies will tank as news surfaces of the latest iBriefs delivering high voltage shocks when it rains."
        ],
        horror: [
          " Luckily for you, the money wouldn't have been useful anyway since the #{JSON.parse(self.nouns||"[]").sample} prefer a barter-based economy."
        ],
        comment: [
          " Also they killed all the bankers. Silver lining?"
        ]
      }
    }
  end

end