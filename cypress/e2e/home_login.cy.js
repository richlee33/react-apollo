describe("home page login", () => {

  beforeEach(() => {
    cy.login_graphql('user1', 'user1')
    cy.visit("http://localhost:3000")
  })

  it("check local storage token for logged in user", () => {
    expect(localStorage.getItem('auth-token')).not.null
  })

  it("the header contains the correct text after login", () => {
    cy.get('.ml1.no-underline.black').eq(0).contains("new")
    cy.get('.ml1.no-underline.black').eq(1).contains("top")
    cy.get('.ml1.no-underline.black').eq(2).contains("search")
    cy.get('.ml1.no-underline.black').eq(3).contains("submit")
    cy.get('.ml1.pointer.black').contains("logout")

  }) 
})