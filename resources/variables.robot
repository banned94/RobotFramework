*** Variables ***
${LOGIN_URL}        https://www.saucedemo.com/
${USERNAME}         standard_user
${PASSWORD}         secret_sauce
${BROWSER}          chrome
@{CREDENTIALS}
...    standard_user    secret_sauce
...    locked_out_user  secret_sauce
...    problem_user     secret_sauce