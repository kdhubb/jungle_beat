require "./lib/linked_list"
require "./lib/node"
require "./lib/jungle_beat"

jb = JungleBeat.new()

jb.append_beat("bubbly" "boop" "pop" "doop" "zoup")

jb.play

jb.prepend_beat("bubbles" "bubbles" "bubbles")

jb.play