#!/usr/bin/env python3

import glob
import sys
import os
import subprocess

print('gco - Git checkout')
print('Dev by Mac')
print(sys.version)
print('----------------------------------------')

branch = sys.argv[1]
print('Checking out to branch : ' + branch)

# ----------------------------------------------------------------------------------------------------

# Config project path here
base_path = '/hoem/mac/projectworkspace'
project_names = [
    'FirstProject',
    'SecondProject'
]

# ----------------------------------------------------------------------------------------------------

for project_name in project_names:
    project_path = base_path + '/' + project_name
    print(project_name + ' : ' + project_path)
    os.chdir(project_path)
    subprocess.call(["git", "checkout", "."])
    subprocess.call(["git", "checkout", branch])

print('Done !')
