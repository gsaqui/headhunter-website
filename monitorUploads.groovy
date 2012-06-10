import static groovy.io.FileType.*
import groovy.grape.Grape

Grape.grab(group: 'javax.mail', module: 'mail', version: '1.4.3', classLoader: this.class.classLoader.rootLoader)
Grape.grab(group: 'org.apache.ant', module: 'ant-javamail', version: '1.7.1', classLoader: this.class.classLoader.rootLoader)


def file = new File('.')

println '============'

//should get properties file
def nameOfEmail 
def emailContents
file.eachFileMatch(FILES, ~/.*\.properties/){
    nameOfEmail = it.name.replace('.properties', '')
	emailContents = it.text
}

def fileToSend 
file.eachFile{
    if(it.name.contains("${nameOfEmail}") && !it.name.contains("${nameOfEmail}.properties") ){
        fileToSend = it
    }
}


if(fileToSend && fileToSend.exists()){
	//send email
	new AntBuilder().mail(
            mailhost: "smtp.gmail.com",
            mailport: 465,
            ssl: "on",
            user: "glenn.saqui@gmail.com",
            password: "sexysonja1980",
            subject: "Headhunter Website") {
        from(address: "glenn.saqui@gmail.com")
        to(address: "glenn.saqui@gmail.com")
        message(emailContents)
		attachments(){
		        fileset(dir:'.'){
		              include(name:fileToSend.name)
		        }
		    }
    }
	fileToSend.delete()
	new File("${nameOfEmail}.properties").delete()
	
}
println "done"