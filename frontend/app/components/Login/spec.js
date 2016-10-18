import React from "react"
import expect from "expect"
import { shallow } from "enzyme"

import { Login } from './'

describe('<Login />', () => {
  it('should render', () => {
    const renderedComponent = shallow(
      <Login />
    )
    expect(renderedComponent.is('div')).toEqual(true)
  })
  it('should have a submit function', () => {
    const component = new Login()
    expect(component.submit).toExist()
  })
})
