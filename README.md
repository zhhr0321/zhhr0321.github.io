# Personal site (al-folio)

This repository hosts Haoran Zhang's personal website using the [al-folio](https://github.com/alshedivat/al-folio) Jekyll theme. The public link stays at `https://zhhr0321.github.io` (empty `baseurl`).

## Local preview
- Install Ruby/Bundler (2.7+). Then run: `bundle install` and `bundle exec jekyll serve`.
- The site uses a GitHub Actions workflow to build and deploy to GitHub Pages; you do not need to commit the `_site` output.

## Quick content edits
- `_pages/about.md` — bio, interests, and hero content.
- `_projects/*.md` — project cards and their detail pages.
- `_data/socials.yml` — email, GitHub, and other social links. Add `cv_pdf: /CV.pdf` once you drop your CV into the repo.
- Set a profile photo by adding an image under `assets/img/` and pointing `profile.image` in `_pages/about.md` to the filename.

## Deploy
- Workflow `.github/workflows/deploy.yml` builds on pushes to `main` and publishes via GitHub Pages. Ensure Pages is configured to use the GitHub Actions source in the repository settings.

