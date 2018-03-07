# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Released]

## [Unreleased]

### 0.0.2 - 2018-03-07
#### Changed
- basic function: {
	- configuration: common variables to be used across functions,
	- diagnose: select which package user wants a diagnosis output,
	- help: output help message,
	- reset: unset internal variables and avoid script errors,
}
- error and help messages now have colors

#### Added
- color scheme on configuration file
- common used strings and variables combinations
- supported packages: {
	- nginx,
	- postgresql: { alias: postgres }
}

### 0.0.1 - 2018-03-06
#### Added
- project folder structure
- system supported: {
	-linux/centos7,
}
- basic functions: {
	- configuration: common variables to be used across functions,
	- diagnose: select which package user wants a diagnosis output,
	- help: output help message,
	- reset: unset internal variables and avoid script errors,
	- version: output module version,
	- welcome: output welcome message,
}
- supported packages: {
	- java,
}

### 0.0.0 - 2018-03-06
#### Added
- project created
