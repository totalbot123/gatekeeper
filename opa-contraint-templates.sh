#!/bin/bash

# open-policy-agent.sh
#
# Script that sets common admission policies
#

# General
## Disallow tags
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper-library/master/library/general/disallowedtags/template.yaml

## Allowed repositories
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper-library/master/library/general/allowedrepos/template.yaml

# Resources
## Required resources
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper-library/master/library/general/containerresources/template.yaml

## Container Limits
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper-library/master/library/general/containerlimits/template.yaml

## Container Requests
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper-library/master/library/general/containerrequests/template.yaml

## Replica limits
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper-library/master/library/general/replicalimits/template.yaml

# Misc
## External IPs
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper-library/master/library/general/externalip/template.yaml

## Unique service selector
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper-library/master/library/general/uniqueserviceselector/template.yaml
