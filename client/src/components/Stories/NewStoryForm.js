import React, { Component } from 'react';
import axios from 'axios'

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
        event.preventDefault()
        axios.post(`/api/stories`, this.state)
            .then((res) => {
                this.props.history.push(`/stories/`)
            }).catch((err) => {
                console.error(err)
            })
    }

    render() {
        return (
            <div>
                <h4>New Story Form</h4>

                <form onSubmit={this.handleSubmit} className='StoryForm'>
                    <label for="title">Title: </label>
                    <input 
                        type='text'
                        name='title'
                        value={this.state.title}
                        onChange={(event) => this.handleChange(event)} 
                    />
                    <label for="story_type">Story Type (separate genres using commas): </label>
                    <input 
                        type='text'
                        name='story_type'
                        value={this.state.story_type}
                        onChange={(event) => this.handleChange(event)} 
                    />
                    <button
                        type='submit'
                        value='story' >Add New Story</button>
                        
                </form>
            </div>
        );
    }
}

export default NewStoryForm;