import React, { Component } from 'react'
import FormInput from './templates/FormInput'

class SkillsForm extends Component {
  constructor(props) {
    super(props)
    this.state = {
      name: "",
      description: ""
    }
    this.valueChange = this.valueChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  valueChange(event){
    this.setState({
      [event.target.name]: event.target.value
    })
  }

  handleSubmit(event){
    event.preventDefault()
    let formPayload = {
      name: this.state.name,
      description: this.state.description
    }
    this.props.addNewSkill(formPayload)
  }

  render(){
    return(
      <div>
        <h1>Add a new Skill</h1>
        <form onSubmit={this.handleSubmit}>
          <div>
            <FormInput
              key="name"
              type="text"
              name="name"
              value={this.state.name}
              valueChange={this.valueChange}
            />
          </div>
          <div>
            <FormInput
              key="description"
              type="text"
              name="description"
              value={this.state.description}
              valueChange={this.valueChange}
            />
          </div>

          <input className="button" type="submit" value="Submit" />
        </form>
      </div>
    )
  }
}

export default SkillsForm
