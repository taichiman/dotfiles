#!/usr/bin/env python
// Check if the window not belong Sublime
import os
import subprocess

print '+Begin'
tab_title = ['\"Google Translate - Chromium\"', '\"Online Etymology Dictionary - Chromium\"']

wid = 0
for title in tab_title:
  try:
    msg = subprocess.check_output( ["xdotool search --name %s" % title ], shell=True )
    print 'title1', title
    print 'msg1', msg
    wid = msg.strip()
  except subprocess.CalledProcessError, e:
    pass

if wid == 0:
  os.system('notify-send "Wake up. Google Translate tab not opened."' )
  #IMPROOVE Exclude os use
  exit()

subprocess.check_call( [ "xdotool windowactivate %s" % wid ], shell=True ) 

print '-End'
# os.system('notify-send "Hello world. End"' )
