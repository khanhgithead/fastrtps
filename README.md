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

This example assumes your local `~/Desktop` is shared within the docker image as `Desktop`.

# Creating an example application

Once in the Docker image you can create a directory for the example application.  For this example we will use `rtps_example` in the `Desktop` directory.

```bash
  cd Desktop
  mkdir rtps_example
  cd rtps_example
```

Create an IDL file called `HelloWorld.idl`.

```bash
  touch HelloWorld.idl
  vi HelloWorld.idl
```

Insert the following code into the file:

```bash
// HelloWorld.idl
struct HelloWorld
{
    string msg;
};
```

Generate the example code with:

 ```fastrtpsgen -example x64Linux2.6gcc HelloWorld.idl```

This will generate all the necessary files for compilation.  Next use make to create
the binary files:  

```make -f makefile_x64Linux2.6gcc```  

All the binary files should
be in the directory `/bin/x64Linux2.6gcc/`.  Change into the directory and run the
application.

```bash
  cd bin/x64Linux2.6gcc
  ./HelloWorldPublisherSubscriber publisher
  ./HelloWorldPublisherSubscriber subscriber
```

# MIT License

Copyright (c) 2017-2020 khanh.githead

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
