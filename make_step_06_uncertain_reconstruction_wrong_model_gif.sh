#!/bin/bash

ffmpeg -framerate 20 -pattern_type glob -i "step_06_uncertain_reconstruction_wrong_model/badModel_frame_*.jpg" step_06_uncertain_reconstruction_wrong_model.mp4
