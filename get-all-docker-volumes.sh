#!/bin/bash
docker volume ls | awk '{print $2}' | tail -n +2
