# Standalone Participant Handouts

The curriculum includes **nine individual participant handouts** and one reusable session-close sheet. Each item is available in two formats:

- **DOCX:** Editable Microsoft Word document for participants to complete, print, or adapt.
- **Markdown:** Individual source file for generating other formats or tailoring a handout for a particular role or participant.

## Download and browse

- [Open the handout index](https://github.com/mrhunsaker/Teacher_LLM_Training/blob/main/my-book/handouts/README.md) for the complete file-by-file list.
- [Browse all Word documents (DOCX)](https://github.com/mrhunsaker/Teacher_LLM_Training/tree/main/my-book/handouts/docx).
- [Browse all individual Markdown sources](https://github.com/mrhunsaker/Teacher_LLM_Training/tree/main/my-book/handouts/markdown).

The existing [Participant Lesson Handouts](participant-lesson-handouts.md) chapter remains the consolidated in-book packet. The standalone files are companion resources, not additional lessons or modules.

## Updating the files

The Markdown files are the source for the generated Word documents. After editing a Markdown handout, regenerate the DOCX files from the repository root:

```bash
python my-book/handouts/scripts/build_handouts.py
```

The generator uses `python-docx`. The GitHub Actions workflow also regenerates the Word files when the handout sources or generator change.

## Use and privacy

Use fictional or district-approved information only. Do not enter identifiable student or staff information into an unapproved system. These handouts support professional planning and reflection; they do not delegate diagnosis, eligibility, IEP, service, or other professional decisions to an LLM.
