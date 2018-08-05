import React, { Component } from 'react'
import { Link } from 'react-router-dom'
import axios from 'axios'

class StoryShow extends Component {

    state = {
        story: {},
        scenarios: []
    }

    componentDidMount() {
        this.getStoryAndScenarios()
    }

    getStoryAndScenarios = async () => {
        try {
            const storyId = this.props.match.params.story_id
            let storyResponse = await axios.get(`/api/stories/${storyId}`)
            let scenariosResponse = await axios.get(`/api/stories/${storyId}/scenarios`)
            this.setState({
                story: storyResponse.data,
                scenarios: scenariosResponse.data
            })
        } catch (err) {
            console.error(err)
        }
    }

    postDelete = async (id) => {
        await axios.delete(`/api/stories/${this.state.story.id}`)
        const setNewState = await axios.get(`/api/stories`)
        // this.setState({
        //     story: setNewState.data
        // })
        this.props.history.push(`/`)
        
    }
    render() {

        const scenarioList = this.state.scenarios.map((scenario) => {
            return (
                <div className="SingleScenario">
                    <Link to={`/stories/${this.state.story.id}/scenarios/${scenario.id}`}>{scenario.title}</Link>
                </div>
            )
        })

        return (
            <div>
                <h1>{this.state.story.title}</h1>
                <div className='ScenarioList'>
                    <button
                        onClick={() => this.postDelete(this.state.story.id)}> Delete {this.state.story.title}
                        </button>
                    <h2>Scenarios</h2>
                    {scenarioList}
                    <hr />
                </div>
            </div>
        );
    }
}

export default StoryShow;