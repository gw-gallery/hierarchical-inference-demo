#!/bin/bash

ffmpeg -framerate 20 -pattern_type glob -i "step_05_proper_uncertain_reconstruction/frame_*.jpg" step_05_proper_uncertain_reconstruction.mp4
