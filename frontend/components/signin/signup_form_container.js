import { connect } from 'react-redux';
import { signup, receiveErrors } from '../../actions/session_actions';
import SessionForm from './session_form'

const mapStateToProps = (state, ownProps) => ({
  errors: state.errors.session,
  formType: "Sign Up",
  formClass: "sign-up-background",
  errors: state.errors.session
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  processForm: (user) => dispatch(signup(user)),
  receiveErrors: (errors) => dispatch(receiveErrors(errors))

});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
