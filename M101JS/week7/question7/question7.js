use final7
var aggregation = db.albums.aggregate([
{$unwind : '$images'},
{$group : {_id : 0, images: {$addToSet : '$images'}}}
])
var images = aggregation.result[0].images;
db.images.find({_id : {$nin : images}}).forEach(function(image){
    db.images.remove({_id : image['_id']})
});
db.images.count({tags : 'kittens'});