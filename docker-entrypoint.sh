# Set defaults for the environment variables
export OPENHIM_CONSOLE_PROTOCOL=${OPENHIM_CONSOLE_PROTOCOL:-"https"}
export OPENHIM_CONSOLE_HOSTPATH=${OPENHIM_CONSOLE_HOSTPATH:-""}
export OPENHIM_CORE_MEDIATOR_HOSTNAME=${OPENHIM_CORE_MEDIATOR_HOSTNAME:-"localhost"}
export OPENHIM_MEDIATOR_API_PORT=${OPENHIM_MEDIATOR_API_PORT:-"8080"}
export OPENHIM_MEDIATOR_HEALTH_WARNING_TIMEOUT=${OPENHIM_MEDIATOR_HEALTH_WARNING_TIMEOUT:-"60"}
export OPENHIM_MEDIATOR_HEALTH_DANGER_TIMEOUT=${OPENHIM_MEDIATOR_HEALTH_DANGER_TIMEOUT:-"120"}
export OPENHIM_CONSOLE_SHOW_LOGIN=${OPENHIM_CONSOLE_SHOW_LOGIN:-"true"}
export KC_OPENHIM_SSO_ENABLED=${KC_OPENHIM_SSO_ENABLED:-"false"}
export KC_FRONTEND_URL=${KC_FRONTEND_URL:-"http://localhost:9088"}
export KC_REALM_NAME=${KC_REALM_NAME:-"platform-realm"}
export KC_OPENHIM_CLIENT_ID=${KC_OPENHIM_CLIENT_ID:-"openhim-oauth"}

cat config/default-env.json | envsubst | tee config/default.json

nginx -g "daemon off;"
