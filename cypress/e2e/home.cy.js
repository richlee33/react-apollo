describe("home page no login", () => {

  beforeEach(() => {
    cy.visit("http://localhost:3000")
  })

  it("the header contains the correct text", () => {
    cy.get('.ml1.no-underline.black').eq(0).contains("new")
    cy.get('.ml1.no-underline.black').eq(1).contains("top")
    cy.get('.ml1.no-underline.black').eq(2).contains("search")
    cy.get('.ml1.no-underline.black').eq(3).contains("login")
  }) 

  it("page redirected to new/1 url", () => {
    cy.url().should('contain', 'new/1')
  })

  it("5 articles are shown", () => {
    cy.get('div.flex.mt2.items-start').should('have.length', 5)

  })
})


