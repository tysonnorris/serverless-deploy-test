#!/bin/bash

#since serverless does not delete dynamic named packages...
echo "deleting cosmos-deploytest-$CIRCLE_BUILD_NUM/hello"
curl -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/actions/cosmos-deploytest-$CIRCLE_BUILD_NUM/hello"

echo "deleting cosmos-deploytest-$CIRCLE_BUILD_NUM/hello2"
curl --write-out '%{http_code}\n' --silent --output /dev/null -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/actions/cosmos-deploytest-$CIRCLE_BUILD_NUM/hello2"

echo "deleting cosmos-deploytest2-$CIRCLE_BUILD_NUM/hello"
curl --write-out '%{http_code}\n' --silent --output /dev/null -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/actions/cosmos-deploytest2-$CIRCLE_BUILD_NUM/hello"

echo "deleting cosmos-deploytest2-$CIRCLE_BUILD_NUM/hello2"
curl --write-out '%{http_code}\n' --silent --output /dev/null -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/actions/cosmos-deploytest2-$CIRCLE_BUILD_NUM/hello2"

echo "deleting cosmos-deploytest-$CIRCLE_BUILD_NUM"
curl --write-out '%{http_code}\n' --silent --output /dev/null -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/packages/cosmos-deploytest-$CIRCLE_BUILD_NUM"

echo "deleting cosmos-deploytest2-$CIRCLE_BUILD_NUM"
curl --write-out '%{http_code}\n' --silent --output /dev/null -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/packages/cosmos-deploytest2-$CIRCLE_BUILD_NUM"