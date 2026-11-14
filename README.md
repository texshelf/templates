# Official texshelf templates

These are the templates the texshelf project maintains itself. Each folder is a
complete project that compiles as it is.

| Folder | Engine | What it is |
| --- | --- | --- |
| `article` | LaTeX (pdflatex, bibtex) | Short article with sections, a table and a bibliography |
| `slides` | LaTeX (pdflatex) | 16:9 beamer talk with no extra theme packages |
| `letter` | LaTeX (pdflatex) | One-page letter |
| `book` | LaTeX (pdflatex, bibtex) | Book with front matter, two chapters and a bibliography |
| `aastex` | LaTeX (pdflatex, bibtex) | AAS journals manuscript (ApJ, AJ and others) with AASTeX v7 |
| `mnras` | LaTeX (pdflatex, bibtex) | MNRAS paper |
| `revtex` | LaTeX (pdflatex, bibtex) | APS and AIP paper with REVTeX 4.2 |
| `elsarticle` | LaTeX (pdflatex, bibtex) | Elsevier journal manuscript |
| `ieeetran` | LaTeX (pdflatex, bibtex) | IEEE conference or journal paper |
| `acmart` | LaTeX (pdflatex, bibtex) | ACM conference paper |
| `llncs` | LaTeX (pdflatex, bibtex) | Springer LNCS proceedings paper |
| `amsart` | LaTeX (pdflatex, bibtex) | AMS mathematics article |
| `article-typst` | Typst | The article above, in Typst |
| `notes-typst` | Typst | Lecture notes with definition and example blocks |

Start a project from one of them with the CLI:

```console
texshelf init article my-paper
typshelf init notes-typst calculus
```

## Changing a template

Edit the folder, check that it still compiles, and open a pull request. CI
compiles every template on each push.

A change reaches users only after a new version is added to the
[registry](https://github.com/texshelf/registry): copy the template's latest
manifest there, raise the version, and set `rev` to the new commit.

Text that `init` replaces (the title and the author) is matched literally, so
if you reword `An Example Title` or `A. U. Thor` here, update the `[variables]`
table in the manifest too.

## License

MIT. Documents you write from these templates are yours; the license covers
the template files only.
