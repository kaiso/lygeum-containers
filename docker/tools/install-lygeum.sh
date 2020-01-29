
#!/bin/bash
set -eu pipefail

curl -o /opt/app/${LYGEUM_BINARY} -L "${LYGEUM_DIST}"

chown -R lygeum:lygeum /opt/app
chown -R lygeum:lygeum /opt/tools