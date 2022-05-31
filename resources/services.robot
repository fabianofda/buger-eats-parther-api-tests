*Settings*
Documentation    Camada de servicos

Library    RequestsLibrary

*Variables*
${BASE_URL}    http://localhost:3333/partners 
&{HEADERS}     Content-Type=application/json      auth_user=qa    auth_password=ninja

*Keywords*
POST Partner
    [Arguments]    ${payload} 

    ${response}    POST                   ${BASE_URL}    
    ...            json=${payload}        
    ...            headers=${HEADERS} 
    ...            expected_status=any

    [Return]    ${response} 

GET Partners

    ${response}    GET                    ${BASE_URL}    
    ...            headers=${HEADERS} 
    ...            expected_status=any

    [Return]    ${response} 

Search Partners
    [Arguments]    ${name} 

    ${query}    Create Dictionary    name=${name}

    ${response}    GET                    ${BASE_URL} 
    ...            params=${query}        
    ...            headers=${HEADERS} 
    ...            expected_status=any

    [Return]    ${response} 

Create Partner List

    ${partners}    Factory Partner List

    FOR             ${p}    IN    @{partners}
    POST Partner    ${p}
    END

Enable Partner
    [Arguments]    ${partners_id} 

    ${response}    PUT                    ${BASE_URL}/${partners_id}/enable    
    ...            headers=${HEADERS}
    ...            expected_status=any

    [Return]    ${response} 

Disable Partner
    [Arguments]    ${partners_id} 

    ${response}    PUT                    ${BASE_URL}/${partners_id}/disable    
    ...            headers=${HEADERS}     
    ...            expected_status=any

    [Return]    ${response} 

DELETE Partner
    [Arguments]    ${partners_id} 

    ${response}    DELETE                 ${BASE_URL}/${partners_id}
    ...            headers=${HEADERS}     
    ...            expected_status=any

    [Return]    ${response} 