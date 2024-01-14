# Create a reduced data set with the relevant columns
data/derived/small_ted.csv: data/raw/european_commission/ted-sample.csv
	mkdir data/derived
	csvcut --columns ID_NOTICE_CAN $< > $@

# Download data using curl
data/raw/european_commission/ted-sample.csv:
	pip install csvkit
	mkdir -p data/raw/european_commission
	curl -Lo data/raw/european_commission/ted-sample.csv https://github.com/codedthinking/tender-home-bias/releases/download/v1.0/ted-sample.csv

#target: source1 source2
#<TAB>instruction1
#<TAB>instruction2

# Shortcuts:
# 1. short-cut for the target file: $@
# 2. short-cut for the (first) source file: $<