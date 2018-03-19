import { Mongo } from 'meteor/mongo';

export const Books = new Mongo.Collection('books');
export const Authors = new Mongo.Collection('authors');
