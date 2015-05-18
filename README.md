# Vaporzone

### Your goals:

- Take in an email and parse it into relevant fields. Figure out what those relevant fields are.
- Create a good foundation. Try to write extensible/maintainable code.
- When you're done, list out next steps you'd take in your implementation. Eg, 'I'd focus on handling different MIME types in the body', etc.
- Don't use a library like TMail that does parsing for you, but feel free to use any non-email-specific libraries.

### A few notes about your goals:

- The directions are purposefully vague. Make decisions on what you think is best for the goal you're trying to accomplish. Feel free to tell us why you made certain decisions in your summary.
- Use the RFC Email Specs as a starting point to help you parse the email.
- Google is your friend!

--------------------------------------------------------------

# Summary of Implementation


##### Decisions made along the way
- Relevant fields to parse/capture: From, Date, Subject, To, Plain Text Body 
- Split text up based on relevant parts as opposed to iterate over all lines of the email
- Split email into two parts: header & body "parts" at 1st boundary break
- Once header was defined, split the header at the relevant fields
- Extract plain text from body


##### Next steps to take
- Account for all Content-Type body types
- Handle emails with attachments and extract those attachments