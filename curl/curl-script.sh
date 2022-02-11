#!/bin/bash
SLEEP_TIME="120"
echo "========================================="
echo "ESPERANDO ${SLEEP_TIME} SEGUNDOSS..."
echo "========================================="
sleep ${SLEEP_TIME}



curl -X POST http://kibana:5601/api/saved_objects/_import -H "kbn-xsrf: true" --form file=@/opt/dashboards/7/dashboard/docker.ndjson -H 'kbn-xsrf: true' -u elastic:changeme
echo "========================================="
echo "ELIMINAR INDICE.."
echo "========================================="
curl -X DELETE "http://kibana:5601/api/saved_objects/index-pattern/metricbeat-*" -H 'kbn-xsrf: true' -u elastic:changeme
curl -X POST http://kibana:5601/api/saved_objects/_import -H "kbn-xsrf: true" --form file=@/opt/dashboards/7/dashboard/apache.ndjson -H 'kbn-xsrf: true' -u elastic:changeme
curl -X POST http://kibana:5601/api/saved_objects/_import -H "kbn-xsrf: true" --form file=@/opt/dashboards/7/dashboard/mysql.ndjson -H 'kbn-xsrf: true' -u elastic:changeme
