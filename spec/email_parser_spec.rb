require './lib/email_parser'

describe 'Parses email' do

  let(:email) { EmailParser.new('./bin/sample_email.txt') }

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


end
