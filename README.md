# My home network

This is the place where I keep track of my home network and store stuff like configuration, playbooks, etc.

## Topology

```mermaid
graph TD
    Internet((Internet)) -->|LTE| Chateau[Chateau LTE]

    Chateau --> Audience_1
    Chateau --> Audience_2
    Chateau --> RouterBoard
    Chateau --> ER_X[Edgerouter X]
    Chateau --> Workstation_1


    RouterBoard --> PI_1[PiHole]
    RouterBoard --> PI_2[ADS-B-Exchange]
    RouterBoard --> PI_3[Internet Monitoring & Rumble]
    RouterBoard --> PI_4[Raspi]

    ER_X --> ROCK[Roon Optimized Core Kit]
    ER_X --> Synology[Synology NAS]
    ER_X --> Netgear

    Netgear --> Cam_Dual[Cam:: Frontyard]
    Netgear --> Dock[Dockingstation]
    Netgear --> Workstation_2

    Audience_2 -...->|WiFi 5| Cam_Entrance[Cam:: Entrance]
    Audience_2 -...->|WiFi 5| Cam_Backyard[Cam:: Backyard]
    Audience_2 -...->|WiFi 5| Dustsensor[Fine dust sensor]
    Audience_2 -...->|WiFi 5| Rooopie
```

## Setup

Install:

`make install`

Test:

`make test`

Run playbook:

`ansible-playbook main.yml`