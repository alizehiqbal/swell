import React from "react";
import { Link } from 'react-router-dom'
import Modal from '../modal/modal'

class WorkoutFeedItem extends React.Component{
  constructor(props){
    super(props)
    this.openForm = this.openForm.bind(this);

  }

  openForm(form){
    this.props.requestWorkoutId(this.props.workout.id);
    this.props.openModal(form);

  }

  render(){
    if(!this.props.workout) return null
    let distance, elevation, duration;
    if (this.props.workout.route){
      elevation = this.props.workout.route.elevation_gain
      duration = this.props.workout.time
      distance = this.props.workout.route.distance
    }
    const jsDate = new Date (this.props.workout.workoutDate);
    const workoutDate = jsDate.toUTCString().split('00:00:00 GMT').join(' ');
    let hour = ''
    if (parseInt(this.props.workout.workoutTimeHours) !== 0 && this.props.workout.workoutTimeHours !== ''){
      hour = `${this.props.workout.workoutTimeHours}hr`
    }

    let minute = ''
    if (parseInt(this.props.workout.workoutTimeMinutes) !== 0) {
      minute = `${this.props.workout.workoutTimeMinutes}min`
    }

    let workoutTime = `${hour} ${minute}`



    return (

      <React.Fragment>
        
        <li className="card">

          <header className="item-feed-header">

            <img className="avatar" src="https://raw.githubusercontent.com/wcsteve/swell/master/app/assets/images/default_profile_icon.jpg"></img>

            <section className="feed-workout-title">
              <Link to={`/users`}className="entry-username">{this.props.username}</Link>
              <time className="feed-time">{workoutDate}</time>
            </section>

          </header>




          <main className="entry-body">
            <div className="entry-icon"></div>
            <div className="workout-main-body">
              <h3 className="title-text">{this.props.workout.title}</h3>

              <ul className="stat-ul">
                <li>
                  <span>Moving Time</span>
                  <b>{workoutTime}</b>
                </li>

                <li className="middle-stat">
                  <span>Distance</span>
                  <b>{distance} mi</b>
                </li>

                <li>
                  <span>Elevation Gain</span>
                  <b>{elevation} ft</b>
                </li>


              </ul>
            </div>
          </main>

          <footer className="feed-item-footer">
            <ul>
              <li>
                <button onClick={()=> this.props.delete(this.props.workout.id)}>Delete</button>
              </li>

              <li>
                <button onClick={()=> this.openForm("editWorkout")}>Edit</button>
              </li>

              <li>
              </li>
            </ul>
          </footer>




        </li>
      </React.Fragment>
    )
  }
  }

export default WorkoutFeedItem;




// <button onClick={()=> this.props.requestWorkoutId(this.props.workout.id)}>Track Me</button>
