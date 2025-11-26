#!/bin/bash
oc apply -f https://raw.githubusercontent.com/eformat/web-terminal/refs/heads/main/web-terminal-all-in-one.yaml
oc wait --for=condition=Ready pod -l app.kubernetes.io/name=web-terminal-controller -n openshift-operators --timeout=600s
oc apply -f https://raw.githubusercontent.com/eformat/web-terminal/refs/heads/main/web-terminal-all-in-one.yaml
echo "🌴 web-terminal-all-in-one installed"
