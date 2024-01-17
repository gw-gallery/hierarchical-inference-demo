#!/bin/bash

ffmpeg -framerate 20 -pattern_type glob -i "step_01_errorless_measurement/errorless_frame_*.jpg" step_01_errorless_measurement.mp4
