import React, { Component } from 'react';
import { Link } from 'react-router-dom'

import StoryShow from './StoryShow'

class StoryIndex extends Component {

    state = {
        stories: []
    }

    componentDidMount() {
        this.fetchStories()
    }

    fetchCities = () => {
        axios.get('/api/stories').then((res) => {
            console.log(res.data)
            this.setState({ stories: res.data })
        })
    }

    render() {

        <h3>Stories Home</h3>
        const storyList = this.state.stories.map((story) => {
            return (
                <div>
                    <Link to={`/stories/${story.id}`}>
                        <Image src={story.img_url} />
                    </Link>
                    <Link to={`/stories/${story.id}`}>
                        <Card.Header>{story.name}</Card.Header>
                    </Link>
                    <Icon name='comment' />
                    <Link to={`/stories/${story.id}/`}>View Comments</Link>
                </div>
            )
        })
    }
}

export default StoryIndex;