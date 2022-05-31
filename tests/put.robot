*Settings*
Documentation    PUT /partner

Resource    ${EXECDIR}/resources/base.robot

Suite Setup    Create Partner List

*Test Cases*
Should enable a partner

    ${partner}    Factory Enable Partner

    ${partner_id}    Create a new partner    ${partner} 

    ${response}    Enable Partner    ${partner_id}

    Status Should Be    200

Should disable a partner

    ${partner}    Factory Disable Partner

    ${partner_id}     Create a new partner    ${partner} 
    Enable Partner    ${partner_id} 

    ${response}    Disable Partner    ${partner_id}

    Status Should Be    200

Should return 404 on enable a partner

    ${partner}    factory 404 partner

    ${partner_id}    Create a new partner    ${partner} 

    Remove Partner By Name    ${partner}[name]

    ${response}    Enable Partner    ${partner_id}

    Status Should Be    404

Should return 404 on disable a partner

    ${partner}    factory 404 partner

    ${partner_id}    Create a new partner    ${partner} 

    Remove Partner By Name    ${partner}[name]

    ${response}    Disable Partner    ${partner_id}

    Status Should Be    404
