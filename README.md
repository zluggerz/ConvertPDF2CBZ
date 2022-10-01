# ConvertPDF2CBZ

---

## Description
Convert PDF files to Comic Book Archive (CBZ)

Shell script that will take a PDF file, break it down by pages into `PNG` files with a higher DPI than the default 150. The resulting PNG files are combined into a zip archive which is then changed to `cbz` and the png files are deleted.

> If resulting file is too large, remove `-r 200` from line 9 to get the default DPI of 150. Or change the value to something lower

This is a better way to feed your digital comics to whatever reading software you use. If you like [Kavita Reader](https://www.kavitareader.com/), use this script to convert your PDF's for better performance.

---

## Dependencies

### [Poppler](https://poppler.freedesktop.org/)
#### Install

GNU/Linux: `apt-get install poppler-utils`

MacOS: `brew install poppler`

### [Zip](https://infozip.sourceforge.net/Zip.html)
#### Install

GNU/Linux: `apt-get install zip`

MacOS: `brew install zip`

---

## Installation:

1. Clone this repo: `git clone https://github.com/zluggerz/ConvertPDF2CBZ.git`
1. Enter cloned directory: `cd ConvertPDF2CBZ`
1. Make script executable: `sudo chmod +x convert.sh`

---

## Usage

> This script can take a long time to complete for very large files. It is RAM and CPU intensive. You need to have at least `2 GB` of RAM for it to be worth your time. It will take only a few minutes to convert a `500 MB` PDF on a machine with `16 GB` of RAM onboard.

> Make sure that you are in the directory where your target PDF file is located. This is not required but it is tidier this way.

`./convert.sh "Name Of File.pdf"`


---

## Notes

You can adjust this script to use `rar` instead of `zip` if you prefer. You'll need to ensure the script changes the file to a `cbr` instead of `cbz`, make sure you have the right `rar` package installed and adjust the compression command on line `11`.