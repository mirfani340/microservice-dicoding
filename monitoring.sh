#!/bin/bash

xterm -e "kubectl port-forward --namespace monitoring svc/kube-stack-prometheus-kube-prometheus 9090:9090" &
xterm -e "kubectl port-forward --namespace monitoring svc/kube-stack-prometheus-grafana 8080:80" &