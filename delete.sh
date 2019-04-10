#!/bin/bash

#since serverless does not delete dynamic named packages...
curl -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/actions/cosmos-deploytest$CIRCLE_BUILD_NUM/hello"
curl -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/actions/cosmos-deploytest$CIRCLE_BUILD_NUM/hello2"
curl -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/actions/cosmos-deploytest2$CIRCLE_BUILD_NUM/hello"
curl -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/actions/cosmos-deploytest2$CIRCLE_BUILD_NUM/hello2"
curl -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/packages/cosmos-deploytest$CIRCLE_BUILD_NUM"
curl -X DELETE -u "$OW_AUTH" "$OW_APIHOST/api/v1/namespaces/_/packages/cosmos-deploytest2$CIRCLE_BUILD_NUM"