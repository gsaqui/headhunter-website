require 'webrick'
require 'stringio'

require 'fcntl'

require 'time'

include WEBrick
class NonCachingFileHandler < WEBrick::HTTPServlet::FileHandler
  def prevent_caching(res)
    res['ETag']          = nil
    res['Last-Modified'] = Time.now + 100**4
    res['Cache-Control'] = 'no-store, no-cache, must-revalidate, post-check=0, pre-check=0'
    res['Pragma']        = 'no-cache'
    res['Expires']       = Time.now - 100**4
  end
  
  def do_GET(req, res)
    super
    prevent_caching(res)
  end

end

class FileUploadServlet < HTTPServlet::AbstractServlet
    def do_POST(req, res)

      name = req.query['name'].gsub(' ', '-')

      uploadedFileName = name + '-file-' + req.query["upload"].filename
      filedata= req.query["upload"]


      open('emailsFromClients/'+name+'.properties', 'a') do |file|
        req.query().each{ |key, value|
          if key != 'upload' && value
            file.puts key +' = '+ value 
          end
        }
      end


      f = File.open('emailsFromClients/'+uploadedFileName, "wb")
      f.syswrite filedata
      f.close

      res.set_redirect(WEBrick::HTTPStatus::MovedPermanently,"http://www.google.com")
  end
end

server = WEBrick::HTTPServer.new :Port => 1234
server.mount "/", NonCachingFileHandler , './'
server.mount("/upload", FileUploadServlet)

trap('INT') { server.stop }
server.start
