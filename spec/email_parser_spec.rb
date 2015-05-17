require './lib/email_parser'

describe 'Raw email parse' do

  let(:email) { EmailParser.new('./bin/sample_email.txt') }

  
  it 'boundary' do
    expect(email.boundary).to eq '047d7b5d41ce6aa6340513b2e576'
  end

  it 'from field' do
    expect(email.from).to eq 'Ann Johnson Hopkins <annjhopkins@gmail.com>'
  end  

  it 'date field' do
    expect(email.date_sent).to eq 'Tue, 14 Apr 2015 13:52:16 -0400'
  end

  it 'subject field' do
    expect(email.subject).to eq 'coding'
  end

  it 'to field' do
    expect(email.to).to eq 'Spencer Hopkins <jspencerhopkins@gmail.com>'
  end

  it 'plain text body' do
    expect(email.body_plain_text).to eq "*Coding Practical*\n\nReady to apply? Take our simple coding practical test and hit the Apply Now\nbutton below to email us the completed code. Also be sure to include your\nresume, github account, or other relevant pointers to your work online. If\nwe like it, we'll invite you in for an interview to make sure we're a good\nfit for each other. Languages Accepted: Ruby, Python, Objective-C, Java or\nJavascript\n\n*Parsing an Email*\n\nWhat do we mean by parse an email? Go to Gmail, open an incoming email, and\ndo View Original. You should see a text file of a raw email. The goal here\nis to parse that and extract relevant fields.\n\nThis is actually a very difficult thing and a proper implementation could\ntake months. However, it's possible to do the basics, without handling all\nof the intricacies, in maybe an hour.\n\n*Your goals:*\n\n   - Take in an email and parse it into relevant fields. Figure out what\n   those relevant fields are.\n   - Create a good foundation. Try to write extensible/maintainable code.\n   - When you're done, list out next steps you'd take in your\n   implementation. Eg, 'I'd focus on handling different MIME types in the\n   body', etc.\n   - Don't use a library like TMail that does parsing for you, but feel\n   free to use any non-email-specific libraries.\n\n*A few notes about your goals:*\n\n   - The directions are purposefully vague. Make decisions on what you\n   think is best for the goal you're trying to accomplish. Feel free to tell\n   us why you made certain decisions in your summary.\n   - Use the RFC Email Specs as a starting point to help you parse the\n   email.\n   - Google is your friend!\n\n\n-- \n\nAnn J Hopkins\n864-590-1972"
  end

end
