import React from 'react';
import { Route, Switch, } from 'react-router-dom';
import SignUpFormContainer from '../signin/signup_form_container';
import SignInFormContainer from '../signin/signin_form_container';


const HomePage = () => (
  <main className="home-page-background">
    <div className="splash-header">
      <h1>
        The App for Fitness Enthusiasts
        <br/>
        It's Time to Get Swell
      </h1>
    </div>
  </main>
)

const Splash = () => (
  <div className="Splash">
    <Switch>
      <Route path='/signup' component={SignUpFormContainer} />
      <Route path='/signin' component={SignInFormContainer} />
      <Route path='/' component={HomePage} />
    </Switch>
  </div>
)

export default Splash;
