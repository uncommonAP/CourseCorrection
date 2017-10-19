import React, { Component } from 'react'
import SkillsForm from '../components/SkillsForm'

class SkillsContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      form: true,
      skills: []
    }
    this.addNewSkill = this.addNewSkill.bind(this)
  }

  componentDidMount() {
    fetch('http://localhost:5000/api/v1/skills')
    .then(response => response.json())
    .then(body => {
      console.log(body);
    })
  }

  addNewSkill(formPayload) {
    fetch('http://localhost:5000/api/v1/skills', {
      method: 'Post',
      body: JSON.stringify(formPayload)
    }) .then(response => response.json())
    .then(body => {
      console.log(body);
      // this.setState({ skills: [...this.state.skills, body]})
    })
  }

  render() {
    return(
      <SkillsForm
        addNewSkill={this.addNewSkill}
      />
    )
  }
}

export default SkillsContainer
