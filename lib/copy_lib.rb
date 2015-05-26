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
      SerialKiller: ['serial killer','murderer'],
      Parasite: ['parasites'],
      Plague: ['plaguebringers','pestilent ones'],
      Torturer: ['the torturer','the psychopath'],
      Insects: ['giant spiders','swarm of locusts']
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
            ["This will have a dark impact on your emotional state and send you into a stubborn mood fit for a true #{@zodiac}. It is up to you to decide how to deal with this. I'm not your mum, I can't tell you what to do.", 'mood'],
            ["Ordinarily, you might rely on your charmisma and winning personality to get you through any tough situations you encounter.", "charm"]
          ]
        },
        horror: {
          Zombies: [
            "No one will care much for your #{@characteristic} by the end of the day as brain-eating zombies sweep through the city, killing everyone in sight. The highly infectious flesh-eaters will eat or turn anyone in their way, turning your once beautiful home into a desolate wasteland."
            ],
          Werewolves: [
            "Unfortunately your #{@characteristic} doesn't come with magical dog-training abilities. This might have come in handy as the most recent full moon saw an outbreak of lycanthropy, and werewolves have been breeding rapidly in the forest. Today they will descend upon humanity and wreak a terrible revenge on dog-owners and other humans alike for not letting Fido eat that delicious steak off the table."
            ],
          Vampires: [
            "The previous days curious swarm of bats passing overhead will turn out to be an omen for the coming of a great evil. In the depths of darkness tonight, bloodsucking vampires will slink through the night and prey upon the innocent, leaving dry husks in their wake. Your #{@characteristic} will do little to discourage a nasty vampire from making a meal of you."
            ],
          Demons: [
            "As you're on your way home later on tonight after purchasing a particularly promising batch of petunia seedlings, your delight will turn to horror as a portal to the netherworld opens up at your feet. Hell-beasts will burst from the earth and set the world alight - not in a Katy Perry kind of way. Demons will capture your loved ones and torture them for sport, before devouring their souls."
            ],
          Witches: [
            "You probably should have cleaned up the inconsipicuous pile of sticks you found at your doorstep yesterday. Turns out a coven of witches decided to use your family as human sacrifices for their nefarious magic. The binding spell will complete and you will be unable to escape or do anything other than watch as your home burns to ashes around you."
            ],
          Aliens: ["Aliens."],
          Poltergeist: ["Poltergeist."],
          Shades: ["Shades."],
          Undead: [
            "By the end of the day your #{@characteristic} will become secondary to the hell unleashed on earth as the dead rise from their graves and slaughter the innocent in their beds. The living dead will enter your home and rip your family to shreds, before feeding on their flesh."
            ],
          Monsters: ["Monsters."],
          SerialKiller: ["SerialKiller."],
          Parasite: ["Parasite."],
          Plague: ["Plague."],
          Torturer: ["Torturer."],
          Insects: ["Insects."]
        },
        nonseq: [
          " Try learning self defence, or write a letter to a loved one you haven't spoken to for a while.",
          " As a typical #{self.class.to_s}, you're vulnerable to stress in a situation like this. Maybe take up yoga or buy some relaxing tea."
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
            " On the plus side your love life won't be your biggest problem once the horde of #{JSON.parse(@nouns||"[]").sample} rampage through town leaving everyone you've ever met just a distant memory."
          ]
        },
      },
      money: {
        intro: [
          "Your investment in wearable technologies will tank as news surfaces of the latest iBriefs delivering high voltage shocks when it rains."
        ],
        horror: [
          " Luckily for you, the money wouldn't have been useful anyway since the #{JSON.parse(@nouns||"[]").sample} prefer a barter-based economy."
        ],
        comment: [
          " Also they killed all the bankers. Silver lining?"
        ]
      }
    }
  end

end