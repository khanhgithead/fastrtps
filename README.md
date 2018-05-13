# Docker of eProsima Fast RTPS

This is a docker build file for eProsima's Fast RTPS implementation.  The java option is included to build the fastrtpsgen application.

See [eProsima Fast RTPS Documentation](http://eprosima-fast-rtps.readthedocs.io/en/latest/) for use.

# Installation

To install run the following command:

```bash
  docker build -t fastrtps .
```
# Running

To run the image type:

```bash
  docker run -it -v ~/Desktop:/Desktop fastrtps bash
```

This example assume shares your local `~/Desktop` is shared within the docker image as `Desktop`.

# MIT License

Copyright (c) 2017 khanh.githead

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
