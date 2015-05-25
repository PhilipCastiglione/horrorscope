module CopyLib

  def getCopy
    {
      general: {
        intro: [
          "It will be an interesting day for you, breaking the mould of the last few dreary weeks of your boring life.",
          "You might regret forgetting your lucky coin this morning."
        ],
        chance: [
          " It's possible this results from the impact of saturn's diurnal orb moving into jupiter's sphere of influence. No promises though.",
          " The current astral configuration is disturbing latent evil forces."
        ],
        sign: [
          "This will have a dark impact on your emotional state and send you into a stubborn mood fit for a true Aries. It is up to you to decide how to deal with this. I'm not your mum, I can't tell you what to do."
        ],
        horror: {
          Zombies: [['zombies'],[]],
          Werewolves: [['werewolves','lycanthropes'],[]],
          Vampires: [['vampires','the nosferatu'],[]],
          Demons: [['demons'],[]],
          Witches: [['witches'],[]],
          Aliens: [['aliens'],[]],
          Poltergeist: [['poltergeist','ghost'],[]],
          Shades: [['shades','spirits'],[]],
          Undead: [['the undead', 'the living dead'],[
              "By the end of the day your mood will become secondary to the hell unleashed on earth as the dead rise from their graves and slaughter the innocent in their beds. The living dead will enter your home and rip your family to shreds, before feeding on their flesh. Try learning self defence, or write a letter to a loved one you haven't spoken to for a while."
              ]],
          Monsters: [['monsters'],[]],
          SerialKiller: [['serial killer','murderer'],[]],
          Parasite: [['parasite'],[]],
          Plague: [['plague'],[]],
          Torturer: [['the torturer','the psychopath'],[]],
          Insects: [['giant spiders','swarm of locusts'],[]]
        }
      },
      love: {
        intro: [
          "A promising enounter with a mysterious stranger will bring some excitement."
        ],
        comment: [
          " The medical-grade prescription strength deoderant you recently purchased is probably paying off here."
        ],
        horror: [
          " The nervous buzz and tingling stomach you feel when talking to your new admirer will be quickly replaced with overwhelming terror and an empty stomach as you see their freshly disemboweled corpse rotting on the side of the road."
        ]
      },
      money: {
        intro: [
          "Your investment in wearable technologies will tank as news surfaces of the latest iBriefs delivering high voltage shocks when it rains."
        ],
        horror: [
          " Luckily for you, the money wouldn't have been useful anyway since the undead hordes prefer a barter-based economy."
        ],
        comment: [
          " Also they ate all the bankers. Silver lining?"
        ]
      }
    }
  end

end