module EmailManager

  def send_template
    begin
      # debug "----------- SENDING EMAIL WITH MANDRILL"
      mandrill = Mandrill::API.new(ENV['MANDRILL_APIKEY'])

      template_name = "Feedback-1"

      template_content = [{"name"=>"content", "content"=>"THis is the dynamic content to be sent"}]
     
      message = {"google_analytics_domains"=>["example.com"],
       "tracking_domain"=>nil,
       "preserve_recipients"=>nil,
       "track_opens"=>nil,
       "metadata"=>{"website"=>"www.example.com"},
       "merge"=>true,
       "url_strip_qs"=>nil,
       "auto_text"=>nil,
       "html"=>"<p>Example HTML content</p>",
       "merge_vars"=>
          [{"vars"=>[{"content"=>"merge2 content", "name"=>"merge2"}],
              "rcpt"=>"nguyen.david89@gmail.com"}],
       # "bcc_address"=>"message.bcc_address@example.com",
       # "attachments"=>
       #    [{"content"=>"ZXhhbXBsZSBmaWxl",
       #        "name"=>"myfile.txt",
       #        "type"=>"text/plain"}],
       "tags"=>["feedback"],
       "inline_css"=>nil,
       "auto_html"=>nil,
       "from_email"=>"test@cityrailfail.com",
       "subject"=>"Customer feedback",
       "signing_domain"=>nil,
       "track_clicks"=>nil,
       "to"=>[{"email"=>"nguyen.david89@gmail.com", "name"=>"Recipient Name"}],
       "recipient_metadata"=>
          [{"values"=>{"user_id"=>123456}, "rcpt"=>"nguyen.david89@gmail.com"}],
       "text"=>"Example text content",
       "global_merge_vars"=>[{"content"=>"merge1 content", "name"=>"merge1"}],
       # "images"=>
       #    [{"content"=>"ZXhhbXBsZSBmaWxl", "name"=>"IMAGECID", "type"=>"image/png"}],
       "google_analytics_campaign"=>"message.from_email@example.com",
       "important"=>false,
       "headers"=>{"Reply-To"=>"message.reply@cityrailfail.com"},
       "from_name"=>"City Rail Fail"}

      async = false

      ip_pool = "Main Pool"

      result = mandrill.messages.send_template template_name, template_content, message, async, ip_pool
          # [{"status"=>"sent",
          #     "_id"=>"abc123abc123abc123abc123abc123",
          #     "reject_reason"=>"hard-bounce",
          #     "email"=>"recipient.email@example.com"}]
      
    rescue Mandrill::Error => e
      # Mandrill errors are thrown as exceptions
      puts "A mandrill error occurred: #{e.class} - #{e.message}"
      # A mandrill error occurred: Mandrill::InvalidKeyError - Invalid API key    
      raise
    end       
  end

end

    # begin
    #     debug "Mandrill"
    #     mandrill = Mandrill::API.new(ENV['MANDRILL_APIKEY'])
    #     message = {"tags"=>["password-resets"],
    #      "global_merge_vars"=>[{"name"=>"merge1", "content"=>"merge1 content"}],
    #      "track_opens"=>nil,
    #      "important"=>false,
    #      "to"=>[{"name"=>"Recipient Name", "email"=>"nguyen.david89@gmail.com"}],
    #      "from_email"=>"cityrailfail@example.com",
    #      "merge_vars"=>
    #         [{"vars"=>[{"name"=>"merge2", "content"=>"merge2 content"}],
    #             "rcpt"=>"nguyen.david89@gmail.com"}],
    #      "metadata"=>{"website"=>"www.example.com"},
    #      "tracking_domain"=>nil,
    #      "html"=>"<p>Example HTML content</p>",
    #      "url_strip_qs"=>nil,
    #      "from_name"=>"Example Name",
    #      "google_analytics_domains"=>["example.com"],
    #      "text"=>"Example text content",
    #      # "attachments"=>
    #      #    [{"name"=>"myfile.txt",
    #      #        "content"=>"ZXhhbXBsZSBmaWxl",
    #      #        "type"=>"text/plain"}],
    #      "bcc_address"=>"message.bcc_address@example.com",
    #      "auto_text"=>nil,
    #      "headers"=>{"Reply-To"=>"message.reply@example.com"},
    #      "signing_domain"=>nil,
    #      "preserve_recipients"=>nil,
    #      "images"=>
    #         [{"name"=>"IMAGECID", "content"=>"ZXhhbXBsZSBmaWxl", "type"=>"image/png"}],
    #      "google_analytics_campaign"=>"nguyen.david89@gmail.com",
    #      "recipient_metadata"=>
    #         [{"values"=>{"user_id"=>123456}, "rcpt"=>"nguyen.david89@gmail.com"}],
    #      "merge"=>true,
    #      "inline_css"=>nil,
    #      "auto_html"=>nil,
    #      "track_clicks"=>nil,
    #      "subject"=>"example subject"}
    #     async = false
    #     ip_pool = "Main Pool"
    #     # send_at = "example send_at"
    #     result = mandrill.messages.send message, async, ip_pool
    #         # [{"reject_reason"=>"hard-bounce",
    #         #     "status"=>"sent",
    #         #     "email"=>"nguyen.david89@gmail.com",
    #         #     "_id"=>"abc123abc123abc123abc123abc123"}]
        
    # rescue Mandrill::Error => e
    #     # Mandrill errors are thrown as exceptions
    #     puts "A mandrill error occurred: #{e.class} - #{e.message}"
    #     # A mandrill error occurred: Mandrill::PaymentRequiredError - This feature is only available for accounts with a positive balance.    
    #     raise
    # end
