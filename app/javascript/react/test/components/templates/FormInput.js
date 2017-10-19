import FormInput from '../../../src/components/templates/FormInput'

describe('FormInput', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = mount(
      <FormInput
        key="1"
        label="Name"
        name="name"
        type="text"
      />
    )
  })

  it('should have a label tag', () => {
    expect(wrapper.find('label')).toBePresent()
    expect(wrapper.find('label').props().htmlFor).toEqual('name')
    expect(wrapper.find('label').text()).toEqual('Name')
  })

  it('should have a input tag', () => {
    expect(wrapper.find('input')).toBePresent()
    expect(wrapper.find('input').props().id).toEqual('name')
    expect(wrapper.find('input').props().name).toEqual('name')
  })
})
