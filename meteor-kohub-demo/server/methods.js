import { Meteor } from 'meteor/meteor';
import { Contests } from '../lib/collections';

Meteor.methods({
  createContest: name => Contests.insert({ name }),
});
