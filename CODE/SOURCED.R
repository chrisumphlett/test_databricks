library(sendmailR)
smtp_server <- list(smtpServer = "corpsmtp01.techsmith.com")
from <- sprintf("<c.umphlett@techsmith.com>")
subject <- "TEST DATABRICKS"
body <- paste(Sys.time())

to <- sprintf("<c.umphlett@techsmith.com>")
sendmail(from, to, subject, msg = list(mime_part(body)), control = smtp_server)
