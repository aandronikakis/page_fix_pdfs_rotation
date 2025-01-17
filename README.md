# Page Fix PDFs Rotation Script

## Description
This script automates the process of fixing page rotations in PDF files, particularly for documents with a two-pages-per-sheet layout. It adjusts the page orientation to ensure the PDFs are suitable for printing, allowing for easy and correct page turning. All input PDF files should be placed in the originals/ folder, and the corrected versions will be saved in the rotated/ folder.

## Usage
1. Place the PDF files to be fixed in the `originals/` folder.
2. Run the script using:
      bash ./page_fix_pdfs_rotation.sh
3. The fixed PDF files will be saved in the rotated/ folder.

## Requirements
Bash
pdftk or another relevant PDF manipulation tool installed.

## Folder Structure
Before running the script, ensure your folder is structured as follows:

page_fix_pdfs_rotation/
├── page_fix_pdfs_rotation.sh
├── originals/       # Input folder for PDF files
└── rotated/         # Output folder for fixed PDF files

## License
This project is licensed under the MIT License.

## Author
Andreas Andronikakis


