#!/bin/bash

ffmpeg -framerate 20 -pattern_type glob -i "step_04_naive_uncertain_reconstruction/histogram_*.jpg" step_04_naive_uncertain_reconstruction.mp4
