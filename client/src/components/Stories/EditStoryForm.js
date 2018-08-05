import React, { Component } from 'react';
import axios from 'axios'

class EditStoryForm extends Component {
    state = {
        title: '',
        story_type: ''
    }

    componentDidMount() {
        this.fetchStory
    }
    fetchStory = () => {
        const storyId = this.props.match.params.story_id
        axios.get(`/api/cities/${storyId}`)
          .then((res) => {
            this.setState({
              title: res.data.title,
              body: res.data.body
            })
          }).catch((err) => {
            console.error(err)
          })
      }

    handleChange = (event) => {
        const inputToTarget = event.target.name
        const userInput = event.target.value
        const newState = { ...this.state }
        newState[inputToTarget] = userInput
        this.setState(newState)
    }

    handleSubmit = (event) => {
        const story_id = this.props.match.params.story_id
        event.preventDefault()
        axios.patch(`/api/stories/${story_id}`, this.state)
            .then((res) => {
                this.props.history.push(`/`)
            }).catch((err) => {
                console.error(err)
            })
    }

    render() {
        return (
            <div>
                <h4>Edit Story Form</h4>

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

export default EditStoryForm;