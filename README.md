## Image Fetcher Project


### Introduction
* Image Fetcher is taking plaintext file as an argument and downloads all images and storing them on the project root/ local disk.
* Downloaded images will be saved in the current project root and it will create a directory called 'images' if you haven't got it.
* In terms of the file name, it will be in the format of "images_(alphabet | numbers from url).jpg"
* Sample plain text file which contains list of image URLs can be found in "sample" directory, "url.txt".


### Gem / Requirements
* Gem: down, rspec


### Installation
* Once you are in the directory where you want to run this script, you can clone/ download this project.


### Getting Started
* To get started, it requires one argument which is plain text file which contains list of URLs.
* Sample URL text file is available in this repository for reference.
* Once you are in the right directory, you can run script using by specifying directory of text file. E.g. for my case:-
```
ruby app.rb ./sample/url.txt
```

* If there is either none or more than one arguments then, it will show error messages.


Thanks very much.
