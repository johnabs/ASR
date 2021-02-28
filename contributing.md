# Contributing to ASR

First of all, thank you for the interest in contributing to this project!

## What to Contribute
What you can contribute will be fairly loose as to what types of scripts will be accepted, though preferably something that is useful across domains rather than specifically for your own area of expertise. For example, having a script to pull papers from various journals is useful for everyone, but a script to do image modification may not be, depending on its scope. I'll review the commits, suggestions, pull requests etc, to make sure that whatever is contributed is at least mostly reasonable to be housed here, otherwise, I'll suggest you put it on your own page, and I would be more than happy to link to your work on the main README (or a sub-page, if it gets too long).

## Ways to Contribute

### Reporting Bugs
This is pretty simple, but for everyone's benefit, there is some necessary information before you submit a bug report. 

1. Check the debugging map (coming soon!)
2. Use a clear title to illustrate the issue. E.g "problem running", is insufficient, something like "exit code X upon running with a specific URL", is much better.
3. Describe exact steps to reproduce the problem. Operating system, which shell you're using, etc. are all important to help me or someone else resolve your issue.
4. Report clear behavior compared to expected behavior.
5. Ideally, some gif or recording can be submitted as well, though this shouldn't be necessary unless the script is either quite large, or the behavior is very unexpected.
6. A package list would also be pretty handy, depending on your OS.

### Suggestions
Since these scripts are already pretty small (usually no longer than 20 SLOC, though there is no length limit), you can likely contribute just about anything you want, rather than suggesting I do it. But, if it's a script I've already written, and you're not sure where to start, I'll see if I can get to it in a reasonable amount of time, or if another contributor is willing to do it. Additionally, there may be software out there that already works for your use-case, check your favorite search engine for something similar first.

### Code Contributions
Since most of these scripts are designed to do one thing and one thing well, it should be fairly easy to come up with loads of ideas and contribute them! The more the merrier, but I need these things to be nicely filed away into their appropriate bin, or a new bin to be created to make it easy for people to find what they want. Please be specific in your goal with the script you link, and try to write it in a POSIX compliant way if at all possible (I'm still learning here myself, so I'm trying not to throw stones too much). POSIX compliance is the easiest way to ensure portability across machines with different OSs; however, if this is not doable, writing the script to work with sh or bash should be an acceptable solution, as most people can have these installed. I've attached a link [here](https://cs.lmu.edu/~ray/notes/bash/) for new shell (specifically bash) scripters to learn the craft and figure out their own interesting scripts for themselves!

## Styleguide

### Code Style Guide

All scripts must have at least 1 comment at the top of the file to indicate its purpose, and what any necessary input variables are, along with their necessary formatting. Additionally, it must follow these rules:

1. Comments for specific code blocks so users can modify it if necessary
2. Do NOT use absolute paths, but relative paths
3. Make sure that each script accomplishes 1 thing well, and that the output can be modified by further scripts if necessary (not always applicable, but usually is)
4. If it is designed to execute code remotely on a cluster, leave the ssh address blank with a placeholder, or have the user input it with a variable
5. Large one-liners are acceptable, but should be commented for clarity.
6. Regex explanations are helpful, though not strictly required.

Possibly more to come...

### Commit and Pull-Requests Style Guide
Your commits and pull requests should be detailed, immediately understandable, and written in English. Only use alphanumeric text with appropriate punctuation when necessary. No emojis, other languages, etc please. Please make it clear what you have added, whether it be functionality to an existing script, or a new script (or even script category) entirely. I prefer the [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/#specification) (one short line with snakecase in the prefix) and have provided some examples below. Pull requests should be handled similarly, but with some more in-depth description including motivation, desired result, etc.

```
commit:
feat(link_regex): added new link handlers to the rss helper script for the following websites
fix(web_handling): replaced wget with curl to avoid the script failing 
etc.

pull request:
	feat(link_regex): added new link handlers to the rss helper script for the following websites
	further explanation including in-depth description of what you added/changed and why
```





