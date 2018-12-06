use adlister;

select email
from users
where user_id in (
  select user_id
  from ad
  where ad_title LIKE '%STUFF1%'
);

SELECT cat_name
from categories
where cat_id in(
  select cat_id
  from ad
  where ad_title like '%stuff1%'
);

select ad_title
from ad
where cat_id in(
  select cat_id
  from categories
  where cat_name = 'buying'
);

select ad_title
from ad
where user_id in (
  select user_id
  from users
  where user_name like 'bobzilla2012'
);

