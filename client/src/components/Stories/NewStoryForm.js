import React, { Component } from 'react';

class NewStoryForm extends Component {
    state = {
        title: '',
        story_type: ''
    }

    handleChange = (event) => {
        const inputToTarget = event.target.name
        const userInput = event.target.value
        const newState = { ...this.state }
        newState[inputToTarget] = userInput
        this.setState(newState)
    }

    handleSubmit = (event) => {
        const city_id = this.props.match.params.city_id
        event.preventDefault()
        axios.post(`/api/cities/${this.props.match.params.city_id}/posts`, this.state)
            .then((res) => {
                this.props.history.push(`/cities/${city_id}`)
            }).catch((err) => {
                console.error(err)
            })
    }

    render() {
        return (
            <div>
                <h4>New Post Form</h4>

                <form onSubmit={this.handleSubmit}>
                    <label for="title">Title: </label>
                    <input 
                        type='text'
                        name='title'
                        
                </form>
            </div>
        );
    }
}

export default NewStoryForm;