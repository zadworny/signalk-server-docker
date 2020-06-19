# SignalK, Telegraf, Influxdb and Grafana
signalk-server-node, Telegraf, Influxdb and Grafana in docker-compose 
```bash
├── signalk
│   └── signalk docker files located here 
├── signalk_conf
│   └── .signalk -folder is located here (bind mount) 
└── signalk_volume
    ├── influxdb
    │   └── influx database files are located here (bind mount)
    ├── grafana
    │   └── grafana config files are located here (bind mount)
    └── telegraf
        └── telegraf config file is located here (bind mount)
```
1st Intallation:
- Run run_me_1st.sh when installing SignalK, Telegraf, Influxdb and Grafana at first time

Update/Upgarde:
- Run update.sh when need to be updated SignalK, Telegraf, Influxdb or Grafana
