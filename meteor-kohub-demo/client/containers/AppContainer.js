import { Meteor } from 'meteor/meteor';
import { createContainer } from 'meteor/react-meteor-data';
import { Contests } from '../../lib/collections';
import App from '../components/App';

export default createContainer(() => {
  const sub = Meteor.subscribe('contests');

  return {
    contests: Contests.find().fetch(),
    loading: !sub.ready(),
    createContest(name) {
      Meteor.call('createContest', name);
    },
  };
}, App);
