import { Meteor } from 'meteor/meteor';
import { check } from 'meteor/check';
import { Books, Authors } from '../lib/collections';

// Books.find returns a reactive cursor.
// When any book is changed on the database (server-side), the cursor will
// notifiy the "subscribed" client and update the data (client-side).
Meteor.publish('books.all', function() {
  return Books.find();
});

// Even if we just need one object from the database, e.g a book by its _id,
// we still use the "find" method.
Meteor.publish('books.one', function(bookId) {
  check(bookId, String);

  return Books.find({
    _id: bookId
  });
})
