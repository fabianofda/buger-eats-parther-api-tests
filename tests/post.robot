*Settings*
Documentation    POST /partner

Resource    ${EXECDIR}/resources/base.robot

*Test Cases*
Should create a new partner
    [Tags]    happy

    Purge Messages

    ${partner}    Factory New Partner

    Remove Partner By Name    ${partner}[name]

    ${response}    POST Partner    ${partner}    

    Status Should Be    201
    ${result}           Filter Partner By Name            ${partner}[name]
    Should Be Equal     ${response.json()}[partner_id]    ${result}[_id]

    ${message}    Get Message

    Log               ${message}[payload] 
    Should Contain    ${message}[payload]     ${partner}[email]


Should return duplicate company name
    [Tags]    dup

    ${partner}    Factory Dup Name

    Create a new partner    ${partner} 

    ${response}    POST Partner    ${partner}    

    Status Should Be    409
    Should Be Equal     ${response.json()}[message]    Duplicate company name