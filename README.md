# SAST Evaluation

### Semgrep*: Improving the Limited Performance of Static Application Security Testing (SAST) Tools

This repository contains the scripts for downloading and building the test data, the results of the various SAST tool evaluations, and the yaml files for Semgrep.



## Abstract

Vulnerabilities in code should be detected and patched quickly to reduce the time in which they can be exploited. There are many automated approaches to assist developers in detecting vulnerabilities, most notably Static Application Security Testing (SAST) tools. However, no single tool detects all vulnerabilities and so relying on any one tool may leave vulnerabilities dormant in code. In this study, we use a manually curated dataset to evaluate four SAST tools on production code with known vulnerabilities. Our results show that the vulnerability detection rates of individual tools range from 11.2% to 26.5%, but combining these four tools can detect 38.8% of vulnerabilities. We investigate why SAST tools are unable to detect 61.2% of vulnerabilities and identify missing vulnerable code patterns from tool rule sets. Based on our findings, we create new rules for Semgrep, a popular configurable SAST tool. Our newly configured Semgrep tool detects 44.7% of vulnerabilities, more than using a combination of tools, and a 181% improvement in Semgrep's detection rate.


### How to download and build the test data

The test data is 170 commits of repositories with a known vulnerability. The shell script to download the data will clone the repository, rename it to its reported CVE-ID, checkout the parent of the vulnerability fixing commit. To download the test data, run the following commands:

```sh
chmod +x download_data.sh

./download_data.sh
```

```sh
chmod +x build_projects.sh

./build_projects.sh
```
