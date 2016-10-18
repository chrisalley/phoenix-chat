import React from "react"
import expect from "expect"
import { shallow } from "enzyme"

import { Signup } from './'

describe('<Signup />', () => {
  it('should render', () => {
    const renderedComponent = shallow(
      <Signup />
    )
    expect(renderedComponent.is('div')).toEqual(true)
  })
  it('should have a submit function', () => {
    const component = new Signup()
    expect(component.submit).toExist()
  })
})
