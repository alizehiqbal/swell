import React from 'react';
import { connect } from 'react-redux';
// import { createRoute } from '../../actions/route_actions';
import UserProfileWidget from './user_profile_widget_component';
import { withRouter } from 'react-router-dom';
import {selectUserWorkouts} from '../../selectors/routes_selector';


const mapStateToProps = (state, ownprops) => {
  const workouts = selectUserWorkouts(state);
  const distanceRan = workouts.reduce((acc, el) =>  {
    return acc + el.route.distance
  }, 0);
  const feetClimbed = workouts.reduce((acc, el) =>  {
    return acc + parseInt(el.route.elevation_gain)
  }, 0);
  
  return ({
    currentUser: state.session.currentUser,
    workoutsTotal: workouts.length,
    distanceTotal: distanceRan,
    evelationTotal: feetClimbed,
    lastActivity: workouts[workouts.length - 1]
  })
}
//
// const mapDispatchToProps = (dispatch) => ({
//
// })

export default connect(mapStateToProps, null)(UserProfileWidget);
