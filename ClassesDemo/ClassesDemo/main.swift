
let skeleton = Enemy()
print(skeleton.health)
skeleton.move()
skeleton.attack()

print()

let dragon = Dragon()

dragon.attackStrength = 15
dragon.wingSpan = 5

print(dragon.health)
print(dragon.wingSpan)

dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane.")
dragon.move()
dragon.attack()
