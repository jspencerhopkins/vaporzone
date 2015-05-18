class EmailParser

  def initialize(email)
    @raw = File.read(email)
  end

  # Step 1 - Capture boundary from raw
  def boundary
    @raw.split("boundary=")[1].split("\n")[0]
  end

  #########################################
  # Split email b/w Header & Body "Parts" #
  #########################################

  # split file at 1st boundary break
  def header
    @raw.split("--" + boundary)[0]
  end
  
  # define body as everything after header
  def body
    @raw.split(header)[1]
  end

  ##########################
  # Relevant Header Fields #
  ##########################

  def from
    header.split(/^From: /)[1].split("\n")[0]
  end

  def date_sent
    header.split(/^Date: /)[1].split("\n")[0]
  end
  
  def subject
    header.split(/^Subject: /)[1].split("\n")[0]
  end

  def to
    header.split(/^To: /)[1].split("\n")[0]
  end

  ###################
  # Plain Text Body #
  ###################

  def body_plain_text
    if body.match("Content-Type: text/plain")
      step1 = body.split("--" + boundary)[1]
      step2 = step1.split("Content-Type: text/plain; charset=UTF-8")[1].strip
    else
      "Email does not include plain text body"
    end
  end

end