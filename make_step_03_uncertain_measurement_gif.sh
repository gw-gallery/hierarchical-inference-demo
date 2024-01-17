#!/bin/bash

ffmpeg -framerate 20 -pattern_type glob -i "step_03_uncertain_measurement/violin_frame_*.jpg" step_03_uncertain_measurement.mp4
