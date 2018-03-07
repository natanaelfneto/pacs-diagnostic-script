<p align="left">
  <a href="#">
    <img alt="picture_archiving_and_communication_system-diagnostic-script-logo" src="https://raw.githubusercontent.com/natanaelfneto/pacs-diagnostic-script/master/assets/img/pacsd-image-logo.png" width="240"/>
  </a>
</p>

This **PACS Diagnostic Module** was based on the routine steps for checking a PACS Server status:\
For more information about PACS, check the wikipedia about it at [wikipedia.org](https://en.wikipedia.org/wiki/Picture_archiving_and_communication_system)
***
# Table of Contents
* [Getting Started](#getting-started)
    * [Clone/Download the repository](#clonedownload-the-repository)
    * [Installation process](#installation-process)
    * [Usage](#usage)
* [License](#license)
***
## Getting Started
### Via Linux Bash
#### Clone/Download the repository
```ShellSession
git clone https://github.com/natanaelfneto/pacs-diagnostic-script.git;
```
#### Installation process
_installation process still under development, to make ir work_
_add the following commands lines inside your ~/.bashrc file instead_
```ShellSession
export PATH=$PATH":$HOME/bin/pacs-diagnostic-script";
chmod +x $HOME/bin/pacs-diagnostic-script/;
alias pacsd='sh $HOME/bin/pacs-diagnostic-script/pacs.sh';
```
_also, make sure that you have cloned the module inside this specific folder:_
```ShellSession
$HOME/bin/
```
_enjoy_
***
## Usage

## License
MIT License

Copyright (c) 2017 Natanael F. Neto (natanaelfneto)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
