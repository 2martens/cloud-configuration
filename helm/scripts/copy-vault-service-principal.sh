#!/bin/bash

kubectl get secret vault-service-principal --namespace=vault-secrets-operator-system -oyaml | grep -v '^\s*namespace:\s' | kubectl apply --namespace="$1" -f -