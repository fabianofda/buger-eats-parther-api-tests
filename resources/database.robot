*Settings*
Documentation    Database conection

# Library    RobotMongoDBLibrary.Insert
# Library    RobotMongoDBLibrary.Update
Library    RobotMongoDBLibrary.Find
Library    RobotMongoDBLibrary.Delete

*Variables*
&{MONGO_URI}
...    connection=mongodb+srv://buger-eats:Xwjov5r6vDtaRsut@cluster0.elt9ltq.mongodb.net/PartnerDB?retryWrites=true&w=majority
...    database=PartnerDB                                                                                                         
...    collection=partner

*Keywords*
Remove Partner By Name
    [Arguments]    ${partner_name}

    ${filter}    Create Dictionary    name=${partner_name}

    DeleteOne    ${MONGO_URI}    ${filter}    

Filter Partner By Name
    [Arguments]    ${partner_name}

    ${filter}    Create Dictionary    name=${partner_name}

    ${results}    Find    ${MONGO_URI}    ${filter}    

    [Return]    ${results}[0]