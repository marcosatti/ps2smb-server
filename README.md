# PS2SMB Server

Containerized Open PS2 Loader SMB server.
Tested working with the latest version of OPL at the time of writing using a Fedora 34 server installation.

## Usage

### Preface

- The run script contains required variables - modify to suit. 
- By default podman-compose is used, but you can change this to docker-compose easily.
- Based off the [Samba Docker image](https://hub.docker.com/r/dperson/samba) - you might need to run manually once in order to login and download the image on first use.
- Uses port 1011 by default.
- See `image/smb.conf` if you need to modify the internal Samba configuration.

### Running manually

```
./up.sh
./down.sh
```

### Running with systemd

- Place the repository under `/root/ps2smb-server`. 
- Copy `ps2smb-server.service` to the `/etc/systemd/system` directory.
- `systemctl daemon-reload`.
- `systemctl start ps2smb-server`.

### Opening the port under firewalld

- Copy `ps2smb-server.xml` to the `/etc/firewalld/services` directory.
- `systemctl restart firewalld`.
- `firewall-cmd --info-service=ps2smb-server` to check it's working.
- `firewall-cmd --zone=FedoraServer --add-service=ps2smb-server --permanent`.
- `firewall-cmd --reload`.

## Licence

MIT.
