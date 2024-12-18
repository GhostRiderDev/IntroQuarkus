#!/bin/bash

# Solicitar el nombre del pod
read -p "Introduce el nombre del pod: " pod_name

# Solicitar el puerto de destino
read -p "Introduce el puerto de destino (target port): " target_port

# Solicitar el puerto local para el reenvío
read -p "Introduce el puerto local para el reenvío (port forward): " local_port

# Ejecutar kubectl port-forward
kubectl port-forward pod/$pod_name $local_port:$target_port