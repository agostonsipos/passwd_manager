# Password manager

This is a deterministic, non-reversible password generator tool.

What is the problem it solves?
  - Nowadays we need to supply a huge number of website passwords
  - People tend to reuse the same (good or bad) ones for multiple sites
  - But some (lazy or fraudulent) websites keep our passwords in *plain text* so if someone gets it, they might have the password for our other accounts

This password generator tool generates arbitrary-length passwords from the username, the sitename and a secret PIN. As the PIN is nowhere stored just used in the algorithm, it cannot be stolen (only forgotten, be careful, there is no "PIN reset" option here).

# Requirements
 * The tool can be run on a Linux server having the following
   * PHP (>=7.0)
   * Julia (>=1.0) with package Random

# Usage

 - Type to the form on `index.html` your input and press the `Generate password` button. PIN and Password length must be integers, or the generator will quietly fail.
 - The generated password is deterministic so for the same input, you will get the same password
 - The tool uses the confusion and diffusion principle, so a slight change of the input will result in a fundamental change of the output

# Important things when using the tool

 * If running on a remote server, always use *https*, otherwise your password can be intercepted
 * It's preferable to change some of the number constants in `backend/passwd.jl`, so your algorithm is unique
   * Also, make `backend` folder unreadable by the webserver, so others can't see it
