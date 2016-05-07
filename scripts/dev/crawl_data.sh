#!/bin/bash
# Call this from root directory of repo
# Check what this does before you call it... everytime. The parameters WILL change.
# Requires phantomjs 2.0.0

wd=$(pwd);
cd data;
phantomjs $wd/scripts/crawlers/crawl_orc_courses.js;
cd medians;
phantomjs $wd/scripts/crawlers/crawl_medians.js 13f 14w 14s 14x 14f 15w 15s 15x 15f 16w;
cd ../terms;
phantomjs $wd/scripts/crawlers/crawl_term.js 2016 F;
cd $wd
python scripts/crawlers/crawl_course_pages.py
