package sms

class Sms {

    String name
    Integer age

    static constraints = {
        name unique: true
    }

    static mapping = {
        sort "name"
    }

}
