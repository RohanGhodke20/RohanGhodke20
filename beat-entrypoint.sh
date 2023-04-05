#!/bin/sh
rm -f /tmp/*.pid
celery -A deployment_test beat --pidfile /tmp/celerybeat.pid -l error