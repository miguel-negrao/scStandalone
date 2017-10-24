#!/bin/bash

cp /usr/local/bin/scsynth /usr/local/bin/sclang .
chmod u+x scsynth;
chmod u+x sclang;
rm -rf SCClassLibrary
cp -r /usr/local/share/SuperCollider/SCClassLibrary .
rm -rf plugins
cp -r /usr/local/lib/SuperCollider/plugins .
