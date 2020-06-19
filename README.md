# SignalK, Telegraf, Influxdb and Grafana
Signalk-server-node, Telegraf, Influxdb and Grafana in docker-compose 
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

Port locations:
- Signalk 3000
- Grafana 3001
- Influxdb 8086

Telegraf has dummy telegraf.conf installed after run_me_1st.sh was run. Edit configuration according to your needs and restart docker-compose

Manual installation
- docker-compose build .
- docker-compose pull
- docker-compose up -d

Stop:
- docker-compose down

Restart:
- docker-compose restart
