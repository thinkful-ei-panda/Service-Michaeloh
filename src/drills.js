require('dotenv').config();
const knex = require('knex');

const knexInstance = knex({
  client: 'pg',
  connection: process.env.DB_URL
});

function searchByListItem(searchTerm){
  knexInstance
    .select('item_id', 'item_name', 'price', 'category')
    .from('shopping_list')
    .where('item_name', 'ILIKE', `%${searchTerm}%`)
    .then(result => {
      console.log(result);
    });
}

searchByListItem('burg');

function paginateItems(page){
  const itemsPerPage = 6;
  const offset = itemsPerPage * (page - 1);
  knexInstance
    .select('item_id', 'item_name', 'price', 'category')
    .from('shopping_list')
    .limit(itemsPerPage)
    .offset(offset)
    .then(result => {
      console.log(result);
    });
}

paginateItems(2);

function itemsAddedAfterDate(daysAgo){
  knexInstance
    .select('item_id', 'item_name', 'price', 'category', 'date_added')
    .where('date_added', '>', knexInstance.raw('now() - \'?? days\'::INTERVAL', daysAgo))
    .from('shopping_list')
    .then(result => {
      console.log(result);
    });
}

itemsAddedAfterDate(3);

function totalCostByCategory(){
  knexInstance
    .select('category')
    .sum('price as total')
    .from('shopping_list')
    .groupBy('category')
    .then(result => {
      console.log('const per category')
      console.log(result);
    });
}

totalCostByCategory();