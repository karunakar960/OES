#!/bin/bash
SPT_SPINNAKER_NAMESPACE=$1									######## In API it tagged as nameSpace
oc project  $SPT_SPINNAKER_NAMESPACE
redis1=$(oc get pods | grep spin-redis | awk '{printf $1}' )
oc logs "$redis1"
