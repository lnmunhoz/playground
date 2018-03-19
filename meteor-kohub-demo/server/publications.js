import { Meteor } from 'meteor/meteor';
import { Contests } from '../lib/collections';

Meteor.publish('contests', () => Contests.find());
