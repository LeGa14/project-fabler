import React, { Component } from 'react';
import axios from 'axios'

class ScenarioShow extends Component {

    state = {
        story: {},
        scenario: {}
    }

    componentDidMount() {
        this.getStoryAndScenario()
    }

    getStoryAndScenario = async () => {
        try {
            const storyId = this.props.match.params.story_id
            const scenarioId = this.props.match.params.scenario_id
            let storyResponse = await axios.get(`/api/stories/${storyId}`)
            let scenarioResponse = await axios.get(`/api/stories/${storyId}/scenarios/${scenarioId}`)
            this.setState({
                story: storyResponse.data,
                scenario: scenarioResponse.data
            })
        } catch (err) {
            console.error(err)
        }
    }

    render() {
        return (
            <div>
                <h3>{this.state.scenario.title}</h3>
                <h4>(of the story, {this.state.story.title})</h4>
                <div className="">

                </div>
            </div>
        );
    }
}

export default ScenarioShow;