#!/bin/bash

ffmpeg -framerate 20 -pattern_type glob -i "step_02_errorless_reconstruction/histogram_*.jpg" step_02_errorless_reconstruction.mp4
