#!/bin/bash

cp /usr/local/bin/scsynth /usr/local/bin/sclang /usr/local/bin/scide .
rm -rf SCClassLibrary
cp -r /usr/local/share/SuperCollider/SCClassLibrary .
rm -rf plugins
cp -r /usr/local/lib/SuperCollider/plugins .
