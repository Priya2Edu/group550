# Group 2 Midterm Project: NBA Analysis

This group project is an analysis of NBA player statistics.

Note: if you are using a different data set, please ensure that the format is an 
excel spreadsheet, that it is titled "nba_data.xlsx", and that it is located inside
the data folder. 

## How to Build Our Report

1. Change your working directory to match the current repository ("group550").

2. Run "make install" to ensure repository packages are properly installed.

3. Ensure that your organizational structure matches the below. Run "make clean"
in the terminal to ensure everything is set up correctly. 

4. Decide which category you would like to view in the report. Open report.Rmd and
change the section: " " in the yaml header to the category you would like (the category options
are at the bottom of this document). Save the report.Rmd file.

5. Now that your structure is correct and clean, run "make" in the terminal to
run all our code and produce the report.html file showing your category of interest!

6. Open the report.html file and enjoy your report!

## Structure of Repository

The `code` folder houses all code required to create outputs shown in our report.

  - `PE_code/` holds code for our analysis of Personal Fouls
  - `sl_code/` holds code for our analysis of Position and 3-Point Field Goal Attempts
  - `code_em/` holds code for our analysis of All Star Awards by Position
  - `code_mm/` holds code for our analysis of Games Started and 3-Pointers & Free Throws

The `output` folder holds all outputs produced by the code. Outputs are read in from
this folder into the RMarkdown document.

  - `PE_output/` holds the outputs of `PE_code`
  - `sl_output/` holds the outputs of `sl_code`
  - `em_output/` holds the outputs of `code_em`
  - `output_mm/` holds the outputs of `code_mm`

The `data` folder holds the excel spreadsheet that contains all of the data used
for the project. Data is read into the Rscripts and RMarkdown document through the Excel file in
that folder. We also have the NBA codebook spreadsheet in this folder for reference.

`Makefile` contains rules for building the final report, as well as a make clean command.

`report.Rmd` is the RMarkdown report that combines all of the data into a nicely
formatted report.

This `README.md` is a document with instructions on compiling the final report.

## Categories for the Report (Customization Element)
This goes in the yaml header of the report.Rmd. Refer to step 4 under the "How to Build Our Report" section.

- `all` All categories of interest shown
- `pf`  Only Personal Fouls Per 36 Minutes by Team
- `fg`  Only Position and 3-Point Field Goal Attempts
- `asa` Only All Star Awards by Position
- `games` Only Games Started and 3-Pointers & Free Throws