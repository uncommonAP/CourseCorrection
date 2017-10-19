import React from 'react'

const FormInput = props => {
  return(
    <label htmlFor={props.name}>{props.label}
      <br />
      <input type={props.type}
        id={props.name}
        name={props.name}
        value={props.value}
        onChange={props.valueChange}
    />
    </label>
  )
}

export default FormInput;
