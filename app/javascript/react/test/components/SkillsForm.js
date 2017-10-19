import SkillsForm from '../../src/components/SkillsForm'

describe('SkillsForm', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = mount(
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

  it('render a submit button', () => {
    let buttonTag = wrapper.find('input')
    expect(buttonTag.length).toEqual(1)
  })
})
