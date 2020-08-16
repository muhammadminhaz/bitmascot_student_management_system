
package sms

class SmsController {

    //Home Page
    def index() {
        def fetched_value = Sms.list() //Fetch all data from database
        [fetched_value:fetched_value]
    }

    //Add Student Page
    def add() {

    }

    //Get ajax req from add.gsp
    def add_student() {
        def value = new Sms(params) //Passed values from ajax

        //Validate fetched db values
        if(!value.validate()) {
            render "Name already taken"
        } else {
            def create_student = new Sms(params)
            create_student.save()
            render "Value added successfully"
        }

    }

    //Search Page
    def search() {

    }

    //Get ajax req from search.gsp
    def search_student() {
        def value = params.search //Passed value from ajax
        def name_age = Sms.findAllByName(value)  //Query db_table by name

        //Check if the name exists in database
        if(name_age.name[0] != null) {
            render "${name_age.name[0]}'s age is ${name_age.age[0]}"
        } else {
            render "There is no student named ${value}"
        }

    }
}
