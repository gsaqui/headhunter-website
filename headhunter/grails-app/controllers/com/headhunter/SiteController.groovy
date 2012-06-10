package com.headhunter

import org.springframework.web.multipart.commons.CommonsMultipartFile

class SiteController {
    def mailService
    def home = {

    }


    def candidates = {
        [showAlert:sendEmail()]
    }

    def clients = {
        [showAlert:sendEmail()]
    }

    def about = {

    }

    def process = {

    }

    def contactUs = {
        [showAlert:sendEmail()]
    }

    private boolean sendEmail() {
        params.remove('action')
        params.remove('controller')

        if (params.upload && request.getFile('upload').size > 0) {
            CommonsMultipartFile file = request.getFile('upload')
            params.remove('upload')


            def bodyOfEmail = ""
            params.each { k, v ->
                bodyOfEmail += "$k = $v \n"
            }

            mailService.sendMail {
                multipart true
                to "glenn.saqui@gmail.com"
                from "glenn.saqui@gmail.com"
                subject "Email from Sarah Cavendish"
                body bodyOfEmail
                attachBytes file.originalFilename, file.contentType, file.getBytes()
            }
            return true

        } else if (params.name) {
            params.remove('upload')

            def bodyOfEmail = ""
            params.each { k, v ->
                bodyOfEmail += "$k = $v \n"
            }

            mailService.sendMail {
                to "glenn.saqui@gmail.com"
                from "glenn.saqui@gmail.com"
                subject "Email from Sarah Cavendish"
                body bodyOfEmail
            }
            return true
        }
        return false
    }

}
