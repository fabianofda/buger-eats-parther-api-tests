*Settings*
Documentation    GET /partner

Resource    ${EXECDIR}/resources/base.robot

Suite Setup    Create Partner List

*Test Cases*
Should return a partner list

    ${response}    GET Partners

    Status Should Be    200
    ${size}             Get length     ${response.json()}    
    Should Be True      ${size} > 0

Should search partner by name

    ${response}    Search Partners    Pastel hipon

    Status Should Be    200
    Should Be Equal     ${response.json()}[0][name]    Pastel hipon


