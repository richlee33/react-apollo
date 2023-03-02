Cypress.Commands.add('login_web', (username, password) => {
  cy.session(username, () => {
    cy.visit('localhost:3000/login')
    cy.get('input').eq(0).type(username)
    cy.get('input').eq(1).type(password)
    cy.get('button').contains('login').click()
    //after successful login, page redirects url
    cy.url().should('contain', '/new')
  })
})

Cypress.Commands.add('login_graphql', (username, password) => {
  const mutation = 'mutation {\n  login(email: "' + username + '", password: "' + password + '") {\n    token\n    __typename\n  }\n}'
  cy.session(username, () => {
    cy.request({
      method: 'POST',
      url: 'http://localhost:4000',
      body: { query: mutation },
    }).then((resp) => {
      window.localStorage.setItem('auth-token', resp.body.data.login.token)
    })
  })
})
