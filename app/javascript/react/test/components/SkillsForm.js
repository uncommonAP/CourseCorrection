import SkillsForm from '../../src/components/SkillsForm'
import { shallow } from 'enzyme'

describe('SkillsForm', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = shallow(
      <SkillsForm />
    )
  })

  it('should have an h1 tag', () => {
    let headerTag = wrapper.find('h1')
    expect(headerTag).toBePresent()
    expect(headerTag.text()).toEqual('Add a new Skill')
  })

  it('should render a form element', () => {
    expect(wrapper.find('form')).toBePresent()
  })

  it('should render two form components', () => {
    expect(wrapper.find('FormInput')).toBePresent()
    expect(wrapper.find('FormInput').length).toEqual(2)
  })

  it('should render a text components for a name input', () => {
    expect(wrapper.find('FormInput').at(0).prop('type')).toEqual('text')
    expect(wrapper.find('FormInput').at(0).prop('name')).toEqual('name')
  })

  it('should render a text component for a description input', () => {
    expect(wrapper.find('FormInput').at(1).prop('type')).toEqual('text')
    expect(wrapper.find('FormInput').at(1).prop('name')).toEqual('description')
  })

  it('render a submit button', () => {
    let buttonTag = wrapper.find('input')
    expect(buttonTag.length).toEqual(1)
  })
})
