{
  "run_list": [
    "role[LEMP]",
    "recipe[lemp::openssh]",
    "recipe[lemp::iptables]"
  ]
}
