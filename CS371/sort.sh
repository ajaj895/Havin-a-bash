#!/bin/bash
filename=$1
sort $filename|uniq|cat
