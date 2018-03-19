import { Template } from 'meteor/templating';
import { ReactiveVar } from 'meteor/reactive-var';
import { Books, Authors } from '../lib/collections';

import './main.html';

Template.books.onCreated(function() {
  console.log('> books template was created.');

  const subscription = this.subscribe('books.all');
  console.log('> books.all subscribed', Books.find().fetch());

  // In the autorun scope, if a reactive variable changes, the code block runs again.
  this.autorun(() => {
    if (subscription.ready()) {
      console.log('> books data are now available in the client', Books.find().fetch());
    }
  })
})

Template.books.helpers({
  books: () => Books.find()
})
