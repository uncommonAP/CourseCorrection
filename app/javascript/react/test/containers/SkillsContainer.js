import SkillsContainer from '../../src/containers/SkillsContainer'
import { shallow } from 'enzyme'

describe('SkillsContainer', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = shallow(
      <SkillsContainer />
    )
  })

  it('should render a SkillsForm component', () => {
    expect(wrapper.find('SkillsForm')).toBePresent()
    expect(wrapper.find('SkillsForm').length).toEqual(1)
  })
})
